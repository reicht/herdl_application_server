class Api::VotesController < ApplicationController
    protect_from_forgery with: :null_session

  def index
    entry = Entry.find(params.fetch(:entry_id))
    render json: entry.votes
  end

  def show
    render json: Vote.find(params.fetch(:id))
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Not found", status: 404 }, status: 404
  end

  def create
    vote = Vote.create(entry_id: params[:entry_id])
    if vote.save
      render json: {
        status: 200,
        message: "Successfully created Vote.",
        vote: vote
      }.to_json
    else
      render json: {
        status: 400,
        message: "Failed to create Vote.",
        vote: vote
      }.to_json
    end
  end

  def update
    vote = Vote.find(params[:id])
    vote.update(id: params[:id])
    render json: { message: "Why did you do that?" }
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Invalid Inputs", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Vote not found", status: 404 }, status: 404
  end

  def destroy
    vote = Vote.where(entry_id: params[:entry_id]).last
    vote.destroy
    render json: { message: "Vote Deleted" }
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Vote not found", status: 404 }, status: 404
  end

end

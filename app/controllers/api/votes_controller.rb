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
    vote = Vote.create(entry_id: params[:id])
    if vote.save
        render json: {
          status: 200,
          message: "Successfully created Vote.",
          user: vote
        }.to_json
    else
      render json: {
        status: 400,
        message: "Failed to create Vote.",
        user: vote
      }.to_json
    end
  end

  def update
    vote = Vote.find(params[:id])
    vote.update(id: params[:id])
    render json: vote
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Invalid Inputs", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Vote not found", status: 404 }, status: 404
  end

  def destroy
    vote = Vote.find(params[:id])
    vote.destroy
    render json: { message: "Vote Deleted" }
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Vote not found", status: 404 }, status: 404
  end

end

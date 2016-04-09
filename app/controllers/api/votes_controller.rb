class Api::VotesController < ApplicationController
    protect_from_forgery with: :null_session

    # skip_before_filter :verify_authenticity_token
    # before_filter :cors_preflight_check
    # after_filter :cors_set_access_control_headers

    def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Max-Age'] = "1728000"
    end

    def cors_preflight_check
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
      headers['Access-Control-Max-Age'] = '1728000'
    end

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

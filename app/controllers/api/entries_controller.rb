class Api::EntriesController < ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery with: :null_session

  def index
    render json: Entry.all
  end

  def show
    render json: Entry.find(params.fetch(:id))
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Entry not found", status: 404 }, status: 404
  end

  def create
    entry = Entry.create(title: params[:title], url: params[:url],
                        image_url: params[:image_url], zip: params[:zip],
                        body: params[:body])
    if entry.save
        render json: {
          status: 200,
          message: "Successfully created Entry.",
          user: entry
        }.to_json
    else
      render json: {
        status: 400,
        message: "Failed to create Entry.",
        user: entry
      }.to_json
    end
  end

  def update
    entry = Entry.find(params[:id])
    entry.update(update_params)
    render json: entry
  rescue ActiveRecord::RecordInvalid
    render json: { message: "Invalid Inputs", status: 400 }, status: 400
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Entry not found", status: 404 }, status: 404
  end

  def destroy
    entry = Entry.find(params[:id])
    entry.destroy
    render json: { message: "Entry Deleted" }
  rescue ActiveRecord::RecordNotFound
    render json: { message: "Entry not found", status: 404 }, status: 404
  end

  private

  def update_params
  good_params = {}
  good_params = good_params.merge(title: params[:title]) unless params[:title].nil?
  good_params = good_params.merge(url: params[:url]) unless params[:url].nil?
  good_params = good_params.merge(image_url: params[:image_url]) unless params[:image_url].nil?
  good_params = good_params.merge(zip: params[:zip]) unless params[:zip].nil?
  good_params = good_params.merge(body: params[:body]) unless params[:body].nil?
  good_params
  end

end

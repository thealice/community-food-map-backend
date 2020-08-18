class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  def index
    @locations = Location.all
    locations_json = LocationSerializer.new(@locations).serialized_json
    render json: locations_json
  end

  def show
    location_json = LocationSerializer.new(@location).serialized_json
    render json: location_json
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render json:  LocationSerializer.new(@location), status: :created
    else
      error_resp = {
        error: @location.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    if @location.update(location_params)
      render json:  LocationSerializer.new(@location), status: :updated
    else
      error_resp = {
        error: @location.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # DELETE /locations/1
  def destroy
    @location.destroy
  end

  private
   
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:name, :notes, :lat, :lng, :zoom, :street, :city, :state, :zipcode, :region_id, :user_id)
    end
end

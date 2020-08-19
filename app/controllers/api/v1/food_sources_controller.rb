class Api::V1::FoodSourcesController < ApplicationController
  before_action :set_food_source, only: [:show, :update, :destroy]

  def index
    @food_sources = FoodSource.all
    food_sources_json = FoodSourceSerializer.new(@food_sources).serialized_json
    render json: food_sources_json
  end

  def show
    food_source_json = FoodSourceSerializer.new(@food_source).serialized_json
    render json: food_source_json
  end

  def create
    @food_source = FoodSource.new(food_source_params)
    if @food_source.save
      render json: FoodSourceSerializer.new(@food_source), status: :created
    else
      error_resp = {
        error: @food_source.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    if @food_source.update(food_source_params)
      render json: FoodSourceSerializer.new(@food_source), status: :updated
    else
      error_resp = {
        error: @food_source.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    @food_source.destroy
  end

  private
    
    def set_food_source
      @food_source = FoodSource.find(params[:id])
    end

    def food_source_params
      params.require(:food_source).permit(:name, :notes, :available, :user_id, :location_id)
    end
end

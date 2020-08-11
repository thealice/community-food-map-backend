class Api::V1::FoodSourcesController < ApplicationController
  before_action :set_food_source, only: [:show, :update, :destroy]

  # GET /food_sources
  def index
    @food_sources = FoodSource.all
    food_sources_json = FoodSourceSerializer.new(@food_sources).serialized_json
    render json: food_sources_json
  end

  # GET /food_sources/1
  def show
    food_source_json = FoodSourceSerializer.new(@food_source).serialized_json
    render json: food_source_json
  end

  # POST /food_sources
  def create
    @food_source = FoodSource.new(food_source_params)

    if @food_source.save
      render json: @food_source, status: :created, location: @food_source
    else
      render json: @food_source.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_sources/1
  def update
    if @food_source.update(food_source_params)
      render json: @food_source
    else
      render json: @food_source.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_sources/1
  def destroy
    @food_source.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_source
      @food_source = FoodSource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def food_source_params
      params.require(:food_source).permit(:name, :notes, :user_id, :location_id)
    end
end

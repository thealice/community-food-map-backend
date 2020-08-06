class Api::V1::RegionsController < ApplicationController
    before_action :set_region, only: [:show]

    def index
        @regions = Region.all
        regions_json = RegionSerializer.new(@regions).serialized_json
        render json: regions_json
    end

    def show
        region_json = RegionSerializer.new(@region).serialized_json
        render json: region_json  
    end

    private
    
    def set_region
      @region = Region.find(params[:id])
    end

    def region_params
      params.require(:region).permit(:name, :lat, :lng, :zoom)
    end
end

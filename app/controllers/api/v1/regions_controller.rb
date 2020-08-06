class RegionsController < ApplicationController
    def index
        @regions = Region.all
    
        render json: @regions
      end

      def show
        render json: @region
      end
end

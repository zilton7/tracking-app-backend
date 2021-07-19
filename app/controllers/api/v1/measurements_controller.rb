module Api
  module V1
    class MeasurementsController < ApplicationController

      def index
        @measurements = Measurement.all
        @measurements.
        
        render json: @measurements
      end

    end
  end
end

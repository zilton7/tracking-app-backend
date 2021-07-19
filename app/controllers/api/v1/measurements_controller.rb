module Api
  module V1
    class MeasurementsController < ApplicationController

      def index
        @measurements = Measurement.all
        
        render json: @measurements.to_json
      end

      def show
        @measurement = Measurement.find(params[:id])
        @measures = Measure.where(measurement: @measurement)

        render json: @measurement.to_json(include: {:measures => {only: [:data, :created_at]}})
      end

    end
  end
end

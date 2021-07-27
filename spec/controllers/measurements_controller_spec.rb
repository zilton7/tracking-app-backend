require 'rails_helper'
require 'json'

RSpec.describe Api::V1::MeasurementsController, type: :controller do
  describe 'GET index' do
    it 'should receive JSON data' do
      get :index

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).count).to eq(Measurement.all.count)
    end
  end
end

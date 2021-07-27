require 'rails_helper'

RSpec.describe 'Measurements', type: :request do
  describe 'GET /measurements' do
    it 'should return all measurements' do
      get '/api/v1/measurements'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).count).to eq(Measurement.all.count)
    end
  end

  describe 'POST /measurements' do
    it 'should create a new measurement' do
      Measurement.create!(name: 'test', image: 'http://placehold.it/500x500') if Measurement.all.count < 1
      expect do
        post '/api/v1/measurements', params: {
          measurement: {
            id: Measurement.last.id
          },
          measure: {
            data: 69.96
          }
        }
      end.to change { Measure.count }.by(1)
    end
  end

  describe 'GET /measurements/:id' do
    measurement = Measurement.last
    it 'should return single measurement data' do
      get "/api/v1/measurements/#{measurement.id}"

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)).to include('name' => 'Test', 'image' => 'http://placehold.it/500x500',
                                                   'measures' => [])
    end
  end
end

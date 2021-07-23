require 'rails_helper'

RSpec.describe Measure, type: :model do
  measurement = Measurement.create!(name:'Test', image:'http://placehold.it/500x500')

  it 'has a data' do
    measure = Measure.new(data: 'whatever', measurement: measurement)
    expect(measure).to_not be_valid

    measure.data = 1.05
    expect(measure).to be_valid
  end
end

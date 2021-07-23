require 'rails_helper'

RSpec.describe Measurement, type: :model do
  it 'has has a name' do
    measurement = Measurement.new(name: 'Te', image: 'http://placehold.it/500x500')
    expect(measurement).to_not be_valid

    measurement.name = 'Test'
    expect(measurement).to be_valid
  end

  it 'has has an image' do
    measurement = Measurement.new(name: 'Test', image: '')
    expect(measurement).to_not be_valid

    measurement.image = 'http://placehold.it/500x500'
    expect(measurement).to be_valid
  end

  it 'has a name between 3 and 24 characters' do
    measurement = Measurement.new(name: 'Te', image: 'http://placehold.it/500x500')
    expect(measurement).to_not be_valid

    measurement.name = 'Test'
    expect(measurement).to be_valid
  end
end

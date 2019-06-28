require 'van'
require 'bike'
require 'docking_station'
require 'garage'

describe Garage do
  it 'receives broken bikes from van' do
    station = DockingStation.new
    van =  Van.new
    bike = double(:bike, broken?: true)
    station.dock bike
    van.collect_broken_bikes(station)
    expect(subject.receive_broken_bikes(bike).length).to eq 1
  end
end

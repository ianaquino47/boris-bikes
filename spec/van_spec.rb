require 'docking_station'
require 'bike'
require 'van'

describe Van do
  it 'collects the broken bikes' do
    station = DockingStation.new
    bike = double(:bike, broken?: true)
    bike2 = double(:bike2, broken?: true)
    station.dock bike
    station.dock bike2
    subject.collect_broken_bikes(station)
    expect(@broken_bikes.nil?).to eq false
  end
end

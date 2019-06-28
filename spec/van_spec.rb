require 'docking_station'
require 'bike'
require 'van'

describe Van do
  it 'collects the broken bikes' do
    station = DockingStation.new
    bike = double(:bike, broken?: true)
    bike2 = double(:bike2, broken?: false)
    station.dock bike
    station.dock bike2
    expect(subject.collect_broken_bikes(station).length).to eq 1
  end
end

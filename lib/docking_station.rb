require_relative 'bike'
require 'pry'

class DockingStation

  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end

bike = Bike.new
docking_station = DockingStation.new
binding.pry

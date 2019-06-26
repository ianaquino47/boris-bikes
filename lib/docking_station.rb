require_relative 'bike'
require 'pry'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'There is already docked bike.' if @bike
    @bike = bike
  end
end

bike = Bike.new
docking_station = DockingStation.new
binding.pry

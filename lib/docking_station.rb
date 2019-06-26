require_relative 'bike'
require 'pry'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end


  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'The docking station is full.' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end
end

bike = Bike.new
docking_station = DockingStation.new
binding.pry

require_relative 'bike'
require 'pry'

class DockingStation
  attr_reader :capacity
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available.' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full.' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

bike = Bike.new
docking_station = DockingStation.new(20)
binding.pry

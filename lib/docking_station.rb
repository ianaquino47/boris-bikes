# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  attr_reader :capacity
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'No bikes available.' if empty?
    raise 'No bikes available.' if @bikes.last.broken?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full.' if full?

    @bikes << bike
  end

  def get_broken_bikes
    @bikes.each do |bike|
      if bike.broken?
        @broken_bikes << bike
      end
    end
    @broken_bikes
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end

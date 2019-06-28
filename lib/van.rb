require_relative 'docking_station'
require_relative 'bike'

class Van

  def initialize
    @broken_bikes = []
  end

  def collect_broken_bikes(station)
    @broken_bikes << station.get_broken_bikes
    @broken_bikes.length
  end

end

class Garage
  def initialize
    @broken_bikes = []
  end

  def receive_broken_bikes(broken_bikes)
    @broken_bikes << broken_bikes
  end
end

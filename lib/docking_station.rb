require_relative 'bike'

class DockingStation
<<<<<<< HEAD
  attr_reader :bike
    def release_bike
        Bike.new
    end
    def dock(bike)
      @bike = bike
    end
=======
  def release_bike
    Bike.new
  end
>>>>>>> refs/remotes/origin/master
end

require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available at this dock' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)

  fail 'station is full' if @bikes
    @bikes = bike
  end
attr_reader :bike
end

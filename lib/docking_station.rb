require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  private
  
  def full?
    fail 'station is full' if @bikes.count >= 20
  end

  def empty?
    fail 'No bikes available at this dock' if @bikes.empty?
  end
end

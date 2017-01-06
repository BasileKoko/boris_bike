require_relative 'bike'

class DockingStation
  attr_reader :bike
  attr_reader :DEFAULT_CAPACITY
  attr_reader :capacity
  attr_reader :initialize

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
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
    fail 'station is full' if @bikes.count >= @capacity
  end

  def empty?
    fail 'No bikes available at this dock' if @bikes.empty?
  end
end

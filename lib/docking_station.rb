require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity


  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    empty?
    broken?
    @bikes.pop
  end

  def dock(bike)
    full?
    bike.broken? ? @bikes.unshift(bike) : @bikes.push(bike)
  end


  private

  def full?
    fail 'station is full' if @bikes.count >= @capacity
  end

  def empty?
    fail 'No bikes available at this dock' if @bikes.empty?
  end

  def broken?
    fail 'No bikes available' if @bikes[-1].broken?
  end
end

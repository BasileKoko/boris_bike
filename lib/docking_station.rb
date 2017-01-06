require_relative 'bike'

class DockingStation
  attr_reader :bike
  attr_reader :DEFAULT_CAPACITY
  attr_reader :capacity
  attr_reader :initialize
  #attr_reader :broken_ones


  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    #@broken_ones = []
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  def report_broken
    #@broken_ones << @bikes.pop
  end

  private

  def full?
    #fail 'station is full' if @bikes.count + @broken_ones.count >= @capacity
    fail 'station is full' if @bikes.count >= @capacity

  end

  def empty?
    fail 'No bikes available at this dock' if @bikes.empty?
  end
end

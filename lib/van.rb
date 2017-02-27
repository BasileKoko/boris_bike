class Van
  attr_accessor :transit_bikes

  def initialize
    @transit_bikes = []
  end

  #this controls the pickup method
  def pickup station
    @transit_bikes = station.broken_ones
    station.broken_ones = []
  end
end

class Van
  def initialize
    @transit_bikes = []
  end

  def pickup station
    @transit_bikes = station.broken_ones
    station.broken_ones = []
  end
end

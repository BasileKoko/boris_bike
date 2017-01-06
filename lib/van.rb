class Van
  def initialize
    @transit_bikes = []
  end

  def pickup
    @transit_bikes = @broken_ones
  end
end

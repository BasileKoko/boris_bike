class Garage
  
def initialize
  @broken_bikes_collected = []
end

  def get_broken(van)
    @broken_bikes_collected = van.transit_bikes

  end
end

# Boris Bike Challenge
Transport for London, the body responsible for delivery of new bike
system, come to us with a plan : a network of docking stations and
bikes that anyone can use. They want us to build a program that will
emulate all the docking stations, bikes and infrastructure (repair
staff, and so on) to make this project a reality.

Through this project I am going to demonstrate how to write object-oriented code
using test-driven approach.

User stories:

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

Running the code example:

```
[1] pry(main)> require './lib/docking_station'
=> true
[2] pry(main)> station = DockingStation.new
=> #<DockingStation:0x007fb1b3c4fb78 @bikes=[], @capacity=20>
[3] pry(main)> bike = Bike.new
=> #<Bike:0x007fb1b3bd5f08>
[4] pry(main)> station.dock(bike)
=> [#<Bike:0x007fb1b3bd5f08>]
[5] pry(main)> station.release_bike
=> #<Bike:0x007fb1b3bd5f08>
[6] pry(main)> station.release_bike
RuntimeError: No bikes available at this dock
from /Users/Basile/Desktop/makers_2017/projects/boris_bike/lib/docking_station.rb:33:in `empty?'

[8] pry(main)> 20.times{station.dock bike}
RuntimeError: station is full
from /Users/Basile/Desktop/makers_2017/projects/boris_bike/lib/docking_station.rb:29:in `full?'
[10] pry(main)> 20.times{station.release_bike}
=> 20
[11] pry(main)> station.bikes
=> []
[12] pry(main)> station.release_bike
RuntimeError: No bikes available at this dock
from /Users/Basile/Desktop/makers_2017/projects/boris_bike/lib/docking_station.rb:33:in `empty?'
[13] pry(main)>
```

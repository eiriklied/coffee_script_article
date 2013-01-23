

class Vehicle
  constructor: (@color) ->

  drive: (meters) ->
    alert "#{@color} vehicle moved #{meters} mts"

class Car extends Vehicle
  # override the drive method in subclass
  drive: ->
    alert "Car driving"
    super 5

myCar = new Car "red"

# will alert "Car driving" 
# and then "red vehicle moved 5 mts"
myCar.drive()

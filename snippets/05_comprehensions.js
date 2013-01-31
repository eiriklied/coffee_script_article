


cars = [
  {name: 'Volvo',  rating: 5},
  {name: 'Toyota', rating: 4},
  {name: 'Nissan', rating: 3}
];

// loop over the array and collect good cars
good = [];
for(var i = 0; i < cars.length; ++i) {
  if (cars[i].rating > 3) {
    good.push(cars[i].name);
  }
}

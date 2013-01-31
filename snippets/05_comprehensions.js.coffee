


cars = [
  {name: 'Volvo',  rating: 5}
  {name: 'Toyota', rating: 4}
  {name: 'Nissan', rating: 3}
]

good = (c.name for c in cars when c.rating > 3)

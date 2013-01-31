


# declaring a variable 'name' somewhere
name = "Jim"

# somewhere else we declare a function myFunc
myFunc = ->
  name = "Tom"
  # other code

myFunc() # first declared 'name' is still "Jim"

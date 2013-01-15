# Coffeescript for the enterprise
By Jøran Lillesand and Eirik Lied

## Intro
CoffeeScript is a little language that compiles into JavaScript.

  - JavaScript was designed in 10 days. Can't fix it, because it would break the web.
  - Fixes or removes a lot of the design weaknesses in JavaScript
  - JavaScript is gaining momentum - also on the server. CoffeeScript is there as well. [[ta med?]]
  - Free, ópen source etcetc

## Feature #win
  - Generates fully humanly readable javascript
  - Readability features and conciseness: significant indentation, suffixable operators, ...
  - Scoping (global variables)
  - Classes
  - Compiles to effective JavaScript – in some cases more effective JavaScript than you would probably write yourself unless you know all the tricks.


### It's JavaScript

One of the great features of CoffeeScript is that it compiles down to fully readable JavaScript. Because it's just JavaScript, it integrates well with existing JavaScript frameworks like jQuery and your legacy JavaScript code.

Example of trivial use of jQuery:
    
    // JavaScript
    $(function(){
      var name = "Developer"
      alert("Hello " + name)
    });

    # CoffeeScript
    $ ->
      name = "Developer"
      alert "Hello #{name}"


### Readability 

One drawback with JavaScript is all its paranthesis and curly braces, because they can really affect the conciceness and readability of the code. In CoffeeScript, indentation is significant (like Python) and this helps us remove a lot of those unneccesary characters. Just look at the following JavaScript code:

    if (url) {
      $.get(url, function(data){
        return $("#result").html(data);
      });
    } else {
      $("#error").show();
    }

In CoffeeScript the same can be written like this
  
    if url
      $.get url, (data) ->
        $("#result").html(data)
    else
      $("#error").show()

It is not too hard to see that the CoffeeScript code has less noise and, it is easier to read what is actually going on.

CoffeeScript has several other options that improves readability of your code. Among these are:

#### Suffixable operators

Like Ruby, CoffeeScript lets you suffix `if` and `unless` operators so logical expressions can be read much like a regular sentence.

    keep_going = true

    alert "Don't stop!" if keepGoing?
    alert "Please stop!" unless keepGoing?

### Classes

JavaScript's way to implement objects with prototypes can be quite cumbersome, and CoffeeScripts cleans this up a bit. Using the `class` keyword we can easily create classes with inheritance and instantiate them:

    class Vehicle
      constructor: (@color) ->

      drive: (meters) ->
        alert "#{@color} vehicle moved #{meters} meters"

    class Car extends Vehicle
      # override the drive method in subclass
      drive: ->
        alert "Car driving"
        super 5

    
    myCar = new Car "red"
    
    # will alert "Car driving" and then "red vehicle moved 5 meters"
    myCar.drive()




## Maturity
  - Rails
  - Github
  - Posten

Others heavily rely on it!

## Drawbacks
  - Another technology in your portfolio
  - Debugging can be more difficult (source maps)
  - Needs to fit into your build process

## Fitting it into your build process
  - Wro4J
  - JAWR
  - Et eller anna på .NET

## Conclusion
win!

## Resources
  - http://coffeescript.org

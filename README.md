# Coffeescript for the enterprise
By Jøran Lillesand and Eirik Lied

## Intro

JavaScript is gaining ever more popularity. New frameworks are popping up right and left and single page apps are emerging as a standard on the web. But still, a lot of developers struggle with doing The Right Thing in JavaScript. So much so, that the book JavaScript: The Good Parts, on how to use, and more importantly how not to use, JavaScript is regarded as a must-read for developers getting started with the language.

So, how did this happen? How did we end up with a "language of the web" which is widely regarded to be, plainly put, a rather poorly designed language? At the time, there was quite a lot of hype around Java in the browser (really!). Its designer, Brendan Eich of Netscape, was ordered to make a little scripting language for the browser based on LiveScript – and to make it "Javaish." This way, we ended up with a language intended for simple web-scripting, which kinda looks like Java, but at the same time is nothing like Java.

Enter CoffeeScript. CoffeeScript is one of several languages to emerge the recent years that compile into JavaScript. CoffeeScript is described as "a little language that compiles into JavaScript." It fixes several bad design features of JavaScript. Additionally it lends features and syntax from popular languages such as Python and Ruby, giving programmers the opportunity to write simpler and more expressive code.

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
      var name = "Developer";
      $("body").append("Hello " + name);
    });

    # CoffeeScript
    $ ->
      name = "Developer"
      $("body").append "Hello #{name}"


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

CoffeeScript has several other options that improves readability of your code and helps you avoid errors. Among these are:

#### Automatic scoping of variables

When declaring variables in JavaScript you should always be aware of the scopw you declare the variable in. Take the code below:

    var name = "Jim";

    // some other code

    var myFunc = function() {
      name = "Tom";
      // other code
    }
    myFunc(); // the global variable name is now "Tom"

    

When running the function `myFunc`, the variable `name` now exists in the global scope since we did not write the keyword `var` first.

In CoffeeScript you never have to use `var`. CoffeeScript automatically adds the `var` keyword for you when compiling to JavaScript, so writing the following in CoffeeScript will not override any variables:

    name = "Jim"

    myFunc = ->
      name = "Tom"

    myFunc() # the global variable name is still "Jim"


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

CoffeeScript has been gaining strong momentum the last few years. Out of more than 2700 respondents in the annual JavaScript Developer Survey, 29% use a language that compile to JavaScript. Of these languages, CoffeeScript is by far the most popular, used by 82%.

CoffeeScript has been the standard client code language in the widely used Ruby on Rails framework as of 3.1 released in August 2011. The popular distributed version control hosting provider GitHub state that all new JavaScript must be written in CoffeeScript.

In Norway, both our projects in different parts of Posten Norge allow and encourage CoffeeScript used as a client side language.

In terms of adoption and maturity, you will not be alone in relying on CoffeeScript for your production code. Others also rely heavily upon it!

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

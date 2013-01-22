# CoffeeScript
By Jøran Lillesand and Eirik Lied

## Intro

JavaScript is gaining ever more popularity. New frameworks are popping up right and left. Single page apps are emerging as a standard on the web. But still, a lot of developers struggle with doing The Right Thing in JavaScript. So much so, that the book JavaScript: The Good Parts, on how to use, and more importantly how not to use, JavaScript is regarded as a must-read for developers getting started with the language.

So, how did this happen? How did we end up with a "language of the web" which is widely regarded to be, plainly put, a rather poorly designed language? At the time, there was quite a lot of hype around Java in the browser (really!). JavaScript's designer, Brendan Eich of Netscape, was ordered to make a little scripting language for the browser based on LiveScript – and to make it "Javaish." This way, we ended up with a language intended for simple web-scripting. That we use for large mission-critical applications. Which kinda looks like Java. But at the same time is nothing like Java.

Enter CoffeeScript. CoffeeScript is one of several languages to emerge the recent years that compile into JavaScript. CoffeeScript is described as "a little language that compiles into JavaScript." It lends features and syntax from popular languages such as Python and Ruby, giving programmers the opportunity to write simpler and more expressive code.

## Why use CoffeeScript?
The primary reason for choosing CoffeeScript over JavaScript is the improved syntax. CoffeeScript provides a large
collection of neat features that allows us to write code that focus on what we want to achieve,
rather than how we want to achieve it. This gives code that is easier to both read and write.

CoffeeScript compiles to plain old JavaScript. This means that it integrates seamlessly jQuery, Backbone.js,
Underscore.js and the existing JavaScript code on your project. Introducing CoffeeScript to an existing JavaScript
codebase is completely viable.

The CoffeeScript compiler produces pretty-printed JavaScript that passes through the JavaScript lint syntax checker
and validator. This means that output produced by CoffeeScript is likely to behave identically across different
browsers and browser versions and you avoid weird bugs caused by misplaced semicolons,
array iteration, accidental global scoping and so on.


## Feature #win
  - Readability features and conciseness: significant indentation, suffixable operators, ...

### It's JavaScript

One of the great features of CoffeeScript is that it compiles down to fully readable JavaScript. And because it's just JavaScript, it integrates well with existing JavaScript frameworks like jQuery and your legacy JavaScript code.

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

A drawback with JavaScript is all its parenthesis and curly braces, because they can really affect the conciseness and readability of the code. In CoffeeScript, just like Python, indentation is significant. This helps us remove a lot of those unnecessary characters. Just look at the following JavaScript code:

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
        $("#result").html data
    else
      $("#error").show()

It's not too difficult to see that the CoffeeScript code has less noise and it is easier to view what is actually going on.

CoffeeScript has several other options that improves readability of your code and helps you avoid errors. We are going to look at some of them.

#### Automatic scoping of variables

When declaring variables in JavaScript you must always be aware of the scope you declare the variable in. See the code below:

    // global variable 'name' declared in another script
    var name = "Jim";

    // some other code

    var myFunc = function() {
      name = "Tom";
      // other code
    }
    myFunc(); // the global variable name is now "Tom"

When running the function `myFunc`, the variable `name` exists in the global scope since we did not write the keyword `var` first.

In CoffeeScript you never have to use `var`. CoffeeScript automatically adds the `var` keyword for you when compiling to JavaScript, so writing the following in CoffeeScript will not override any variables:
    
    # declaring a variable 'name' somewhere
    name = "Jim"

    # somewhere else we declare a function myFunc
    myFunc = ->
      name = "Tom"
      # other code

    myFunc() # the first declared variable 'name' is still "Jim"


#### Suffixable operators

Like Ruby, CoffeeScript lets you suffix `if` and `unless` operators so that logical expressions can be read much like a regular sentence.

    keepGoing = true

    alert "Don't stop!" if keepGoing?
    alert "Please stop!" unless keepGoing?

#### Comprehensions

Looping over an array or an object's properties is quite fundamental, and enhancing this experience could really improve the expressiveness in a language. In regular JavaScript you would typically use an oldfashioned for-loop. Underscore.js and jQuery offers functions that can improve the syntax quite a bit, but you still end up with paranthesis and curly braces all over the place. CoffeeScript has this functionality built into the language.

Consider the JavaScript code below, where we loop through and array and extract the names of the cars with a high rating. 

    cars = [
      {name: 'Volvo', rating: 5},
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


This is one of the places CoffeeScript really shines. Not only is the corresponding code for looping over the cars short, but its really concise. 

    cars = [
      {name: 'Volvo', rating: 5}
      {name: 'Toyota', rating: 4}
      {name: 'Nissan', rating: 3}
    ]

    good = (c.name for c in cars when c.rating > 3)


### Classes

JavaScript's way to implement objects with prototypes can be quite cumbersome, and CoffeeScript cleans this up a bit. Using the `class` keyword we can easily create classes with inheritance and instantiate them:

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


Other features of CoffeeScript worth noting are string interpolation (as seen in the examples), 



## Maturity

CoffeeScript has been gaining strong momentum the last few years. Out of more than 2700 respondents in the annual
JavaScript Developer Survey, 24% of respondents state that they use CoffeeScript.


CoffeeScript is heavily backed in the Ruby on Rails community. It has been the the standard client code language in
the framework as of version 3.1, which was released in August 2011. Following this, among others GitHub stating in their
implementation guidelines that all new in-house client code must be written in CoffeeScript.

In Norway, both our projects in different parts of Posten Norge allow and encourage CoffeeScript used as a client side language.

In terms of adoption and maturity, you will not be alone in using CoffeeScript for your production code. Others
also rely heavily upon it!

## Drawbacks

There are some drawbacks to introducing a new language in your project.

First, there is the cost of knowledge. Each time you introduce a new technology, it represents another skill your team will need to maintain over time. In this case, the cost shouldn't be too bad. CoffeeScript is similar to JavaScript, and in any case, you may choose to compile it to JavaScript and maintain it as such.

The use of a debugger is more difficult when developing with a compiled language, as you will be debugging the compiled code. There are ongoing initiatives to develop a source mapper for CoffeeScript, which will allow debugging CoffeeScript's directly, but to date, nothing has yet been released.

Lastly, you will need to fit CoffeeScript into your build process. Depending on your platform, there are several tools available for this. TODO: SKRIV SKIKKELIG

## Conclusion
win!

## Resources
  - http://coffeescript.org
  - https://github.com/styleguide/javascript

!-- Generell input fra Christoffer --!
- Merker fort at det er flere enn 1 som har skrevet på den. Kunne vært greit med konsekvent bruk av enten feks "it is" eller "it's"
- Gjerne konsekvent bruk av enten "using" eller "to use". Et anent eksempel er: "CoffeeScript has been gaining strong momentum", mens get et anent sued er bruit: "In Norway, both our projects in different parts of Posten Norge allow and encourage "
- Mye komma. For lesbarhet kan det være vel så bra å dele opp i flere setninger.
- Kan godt ha med pros/cons av å introdusere CoffeeScript for "nye" JavaScript-utviklere, som kanskje ikke har full oversikt over "the Bad Parts".
Jeg liker innholdet!

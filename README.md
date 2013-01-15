# Coffeescript for the enterprise
By Jøran Lillesand and Eirik Lied

## Intro

JavaScript is gaining ever more popularity. New frameworks are popping up right and left and single page apps are emerging as a standard on the web. But still, a lot of developers struggle with doing The Right Thing in JavaScript. So much so, that the book JavaScript: The Good Parts, on how to use, and more importantly how not to use, JavaScript is regarded as a must-read for developers getting started with the language.

So, how did this happen? How did we end up with a "language of the web" which is widely regarded to be, plainly put, a rather poorly designed language? At the time, there was quite a lot of hype around Java in the browser (really!). Its designer, Brendan Eich of Netscape, was ordered to make a little scripting language for the browser based on LiveScript – and to make it "Javaish." This way, we ended up with a language intended for simple web-scripting, which kinda looks like Java, but at the same time is nothing like Java.

Enter CoffeeScript. CoffeeScript is one of several languages to emerge the recent years that compile into JavaScript. CoffeeScript is described as "a little language that compiles into JavaScript." It fixes several bad design features of JavaScript. Additionally it lends features and syntax from more modern languages such as Python and Ruby, giving programmers the opportunity to write simpler and more expressive code.

## Feature #win
  - Generates fully humanly readable javascript
  - Classes
  - Readability features and conciseness: significant indentation, suffixable operators, ...
  - Compiles to effective JavaScript – in some cases more effective JavaScript than you would probably write yourself unless you know all the tricks.

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

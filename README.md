# CoffeeScript
By Jøran Lillesand and Eirik Lied

## Intro

JavaScript is gaining ever more popularity. New frameworks are popping up right and left and single page apps are emerging as a standard on the web. However, a lot of developers still struggle to do _The Right Thing_ in JavaScript. So much so, that the book JavaScript: The Good Parts, on how to use, or more importantly how not to use, JavaScript is regarded as a must-read for developers getting acquainted with the language.

So, what happened? How did we end up with a "language of the web" which is widely regarded to be, plainly put, a rather quirky language? At the time of Javascript's creation, there was quite a lot of hype surrounding Java in the browser (really!). JavaScript's designer, Brendan Eich of Netscape, was ordered to create a scripting language adapted for the browser based on LiveScript – and to make it "Javaish." And that's how we ended up with a language intended for simple web-scripting, which today is used in large mission-critical applications. It kinda looks like Java. At the same time, it is nothing like Java.

Enter CoffeeScript. CoffeeScript is one of several languages to emerge the recent years that compile into JavaScript. CoffeeScript lends features and syntax from popular languages such as Python and Ruby, giving programmers the opportunity to write more concise and expressive code.

## Why use CoffeeScript?
The prime benefit when choosing CoffeeScript over JavaScript is the expressive syntax. CoffeeScript provides a large
collection of neat features that allows us to write code focusing on _what_ we want to achieve,
rather than _how_ we want to achieve it. The result is code that is easier to both read and write.

CoffeeScript compiles to plain old JavaScript. This means that it seamlessly works with jQuery, Backbone.js,
Underscore.js, as well as the existing JavaScript code in your project. Introducing CoffeeScript to an existing JavaScript
codebase is completely viable.

The CoffeeScript compiler produce pretty-printed JavaScript that pass through the JavaScript lint syntax checker
and validator. This means that the output produced by CoffeeScript is likely to behave identically across different
browsers and browser versions. This again helps avoiding those annoying bugs caused by misplaced semicolons,
array iteration, accidental global scoping and so on.

## What's great about CoffeeScript?
Finally, time for some code! The following sections show a few of the features CoffeeScript brings to the table.

### It's JavaScript

Since CoffeeScript compiles down to fully readable JavaScript, calling other JavaScript code is easy. Here's an example using jQuery:

```
IMAGE: 01_trivial_use.js.png
```


```
IMAGE: 01_trivial_use.coffee.png
```

### Readability 

Like Java, JavaScript is a verbose language with all its parentheses and curly braces. This tends to affect the conciseness and readability of the code.
CoffeeScript uses significant indentation, which removes a lot of unnecessary characters. Just look at the following JavaScript code:

    IMAGE: 02_readability.js.png

In CoffeeScript the same can be written as:

    IMAGE: 02_readability.coffee.png

The CoffeeScript code has less noise and makes it easier to see what's going – at least once you get used to the syntax.

### Automatic scoping of variables


One thing that new JavaScript developers often struggle with is scoping. Consider the code below:

    IMAGE: 03_scoping.js.png

When running the function `myFunc`, the variable `name` is modified in the global scope as it was not declared using the `var` keyword.

The CoffeeScript compiler makes sure that all your variables are properly declared within lexical scope. This way, you never have to write `var` yourself.

    IMAGE: 03_scoping.coffee.png

If you want to assign variables to the global scope in CoffeeScript, you will have to do so explicitly.


### Suffixable operators

CoffeeScript lets you suffix `if` and `unless` operators so that logical expressions can be read much like regular sentences.

    IMAGE: 04_suffixable.coffee.png

### Comprehensions

Looping over an array or an object's properties is fundamental in almost any language, and enhancing it really improves expressiveness. In regular JavaScript you would typically use an old fashioned for-loop.
Underscore.js and jQuery offer functions that can improve the syntax quite a bit, but you still end up with parentheses and curly braces all over the place. CoffeeScript has looping with comprehensions built into the language.

Consider the JavaScript code below, where we loop through an array and extract the names of cars with a high rating.

    IMAGE: 05_comprehensions.js.png

This is one of the places CoffeeScript really shines. Note how the concise code allows us to focus on what we want to achieve, instead of array semantics.

    IMAGE: 05_comprehensions.coffee.png

### (Almost) everything is an expression

Almost everything you write in CoffeeScript can return something. This is true for loops, `if` statements, `switch case` statements – and almost anything else.

Consider, for example, the following.

    IMAGE: 06_everything_expression.coffee.png

### Block strings

Most programmers who have tried putting HTML templates inside their JavaScript files know how tedious this can be.
Block strings allow you to easily create large, multiline strings that preserve line breaks and formatting.

    IMAGE: 07_block_strings.coffee.png


### Classes

Using object orientation based on prototypes in JavaScript can be cumbersome. CoffeeScript makes it way easier. Using the `class` keyword we can easily create classes and inheritance.

    IMAGE: 08_classes.coffee.png

## Maturity

Over the last few years, CoffeeScript has gained a strong momentum. 25% of more than 2700 respondents in the annual JavaScript Developer Survey claim to use CoffeeScript.

The Ruby on Rails community has embraced CoffeeScript as the way forward for client side code, where it has been integrated as a part of the framework for over a year. Furthermore, high traffic sites such as GitHub uses CoffeeScript for all new JavaScript development.

In Norway, both of our projects in different parts of Posten Norge allow and encourage CoffeeScript as client code language.

In terms of adoption and maturity, you will not be alone in using CoffeeScript for your production code. Many others also rely heavily on it!

## Drawbacks

There are always some drawbacks when introducing a new language in your project.

First, there is the cost of knowledge. Every time you introduce a new technology, it represents another skill your team will need to maintain over time. In this case, the cost should not be too bad. CoffeeScript is similar to JavaScript, and in any case, you have the option of compiling it to JavaScript and maintaining it as such.

The use of a debugger is more difficult when developing with a compiled language, as you will be debugging the compiled code. There are ongoing initiatives to develop a source mapper for CoffeeScript, which will allow debugging CoffeeScripts directly, but to date, nothing has been released.

Lastly, you will need to find a way to fit CoffeeScript into your build process. Depending on your platform, there are several tools available for this.
For Java, this can be solved quite easily using tools such as wro4j and JAWR. For .NET SquishIt.CoffeeScript and Mindscape Web Workbench are both good choices.

## Conclusion
CoffeeScript is not a revolution. It is not a unique, ground-breaking language. Instead it adds a bunch of incremental
improvements over JavaScript which, in sum, makes it more pleasant to work with. Experienced JavaScript developers
should have no problems familiarizing themselves with CoffeeScript and the enhancements it offers. For new developers,
it will allow them to focus on getting the job done, rather than learning the quirks and pitfalls of JavaScript.

As with any new technology there are trade-offs to consider. While it can be argued that CoffeeScript is simple, it will be another tool that your developers will have to master.
We feel that this is an investment that pays off over time. In the long run you will have more expressive code that will be easier to understand and maintain – and a lot of fun to write!



### BIO

Jøran Vagnby Lillesand is a developer and the practice lead for Web Architecture at Bekk Consulting. He has worked on large applications at Posten Norge for almost five years. The last few years he has been focusing on building maintainable JavaScript for large enterprise applications. Jøran holds an MSc in communication technology from NTNU.

Eirik Lied is a developer at Bekk Consulting and have worked on projects at Posten Norge the last four years. He is passionate about web development and Ruby code. In his spare time, your can find Eirik in the mountain skiing or coding Rails apps. He holds an MSc in computer science from the University of Oslo.


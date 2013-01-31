


// global variable 'name' declared 
// in another script
var name = "Jim";

// some other code

var myFunc = function() {
  name = "Tom";
  // other code
}

myFunc(); // global var name is now "Tom"

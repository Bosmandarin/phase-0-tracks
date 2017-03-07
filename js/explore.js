//Pseudocode idea 1:
// Program that takes a string and reverses it
// Get the string
// Break it into an array of characters
// Create an empty array
// Open a for loop and assign every character in the char array to the
// reverse position in our new array
// exit the loop and convert the new array into its own string

//Pseudocode idea 2(Worked):
//Make an empty string
//Build a function that takes that the input from user
//And loops backwards through that user input string
//And starts adding the characters from the string to the new empty string

var newString = "";

//Successful attempt!
var newString = "";

function reverseMyString(myString){
 for (var i = myString.length - 1; i >= 0; i--) {
        newString = newString + myString[i];
    }

  if (2==2){
  console.log(newString);
}
return newString;

}

reverseMyString('Boluwatife');

//------------------

//var myString = "Boluwatife";
//var myStringArray = myString.split();
//var newStringArray = new Array(myStringArray.length);


//Failed attempt 1
// for (var i = myStringArray.length; i > 0; i--){
//   newStringArray.push(myStringArray[i]);
// }

//Failed attempt 2
// for (var i = 0; i < myStringArray.length; i++){
//   myStringArray[i] = newStringArray[myStringArray.length-(i+1)];
// }

// var newString = newStringArray.toString();
// return newString
// console.log(newString);

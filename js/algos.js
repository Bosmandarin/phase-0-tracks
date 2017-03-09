//Release 0
function findLongest(myArray){
  var lengthArray = [];
  for (i = 0; i < myArray.length; i++) {
    lengthArray.push(myArray[i].length);
}
//console.log(lengthArray);
var longest = Math.max.apply(Math, lengthArray);
//return longest;
var indexOfLongest = lengthArray.indexOf(longest);
//return indexOfLongest;
var longestWord = myArray[indexOfLongest];
return longestWord;
}


//Release 2
//Attempt 1
// function giveStrings(int){
//   var randStringArray = [];
//   var newString = "";
//   var alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
//   for (i = 0; i < int; i++) {
//     posString += alphabets.charAt(Math.floor(Math.random() * alphabets.length));
//     randStringArray.push(posString);
//   }
//   return randStringArray;

// }

// giveStrings(3);

//Attempt 2 Worked!
function giveStrings(int) {
var randStringArray = [];
var alphabet = "abcdefghijklmnopqrstuvwxyz";
var newString = "";
for(var j = 0; j < int; j++) {
    for (var i =0; i < Math.ceil(Math.random()*4); i++) { //conditional is a random length
      newString += (alphabet[Math.round(Math.random() * 10)]);
    }
    randStringArray.push(newString);
  }
  return randStringArray;
}


//Attempt 1 Worked!
function doTenTimes(int){
  var valleyOfLongWOrds = [];
  for (var i = 0; i < 10; i++){
    var yourArray = giveStrings(int);
    var longestWords = findLongest(yourArray);
    console.log(longestWords);
    valleyOfLongWOrds.push(longestWords);

  }
  return valleyOfLongWOrds;
}


//Release 2
function findPairs(hashOne, hashTwo){
  pairFound = true;
  for (var key in hashOne){
    console.log(hashOne[key]);
    for (var key2 in hashTwo){
      if (hashOne[key] == hashTwo[key2]) {
      return pairFound;
      }
    }
  }
  return !pairFound;
}

var firstMap = {
    name: "Steven",
    age: 54
};
var secondMap = {
    name: "Tamir",
    age: 54
};


//Driver code

//Relaese 1
var myArray1 = ["big","bigger","biggest"];
var myArray2 = ["long phrase","longest phrase","longer phrase"];
var myArray3 = ["Tim","Max","Freddy","Jason","Aurelia"];

findLongest(myArray1);
findLongest(myArray2);
findLongest(myArray3);

//Relaese 2
findPairs(firstMap, secondMap)

//Relaese 3
giveStrings(3);
doTenTimes(3);

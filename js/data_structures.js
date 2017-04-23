//Release 0
var colors = ["blue", "grey", "pink", "black", "brown"];
var horseNames = ["ed", "kingsley", "Allen", "Buck", "silver"];


//Release 1
function horseHash (horses, colors){
  var horses_colors = {};
  if (horses.length == colors.length) {
    for (i = 0; i < horses.length; i++) {
    horses_colors[horses[i]] = colors[i];
  }
}
else {
  console.log("The length of the two arrays do not match try again.")
}
return horses_colors;
}
horseHash(horseNames, colors);


//Release 2

function Car(name, horsePower, color) {

	this.name = name;
	this.horsePower = horsePower;
	this.color = color;
	this.mileage = function() {
	  console.log("It has a mileage of " + horsePower*5);
	}
	console.log("Our new car:", this.name);
}

//Driver code

console.log("AUTOMOBILE ASSEMBLY PLANT");
console.log("Time to build a new automobile ...");

var anotherAuto = new Car("Ferrari", 660, "silver");
console.log(anotherAuto);
console.log("This car zooms:");
anotherAuto.mileage();
console.log("----");

var yetAnotherAuto = new Car("Mercedes", 500, "black");
console.log(yetAnotherAuto);
console.log("This car can vrooms:");
yetAnotherAuto.mileage();
console.log("----");

var yetYetAnotherAuto = new Car("Volkswagen", 220, "red");
console.log(yetYetAnotherAuto);
console.log("This car can trots:");
yetYetAnotherAuto.mileage();
console.log("----");




//Driver code
colors.push("yellow");
console.log(colors);

horseNames.push("The Black Stallion");
console.log(horseNames);

horseHash(horseNames, colors);

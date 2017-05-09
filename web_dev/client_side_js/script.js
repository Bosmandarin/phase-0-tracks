console.log("The script is running!");



// function specialEffect(event){
//   console.log("click happened: Here's the click event:");
//   console.log(event);
//   event.target.style.border = "3px dotted blue";
// }



function addPinkBorder (event){
  var tables = document.getElementsByTagName("table");
  var mytable = tables[0];
  mytable.style.border = "2px pink";
}

var tables = document.getElementsByTagName("table");
var mytable = tables[0];
mytable.addEventListener("click", addPinkBorder);



// addEventListener("click", specialEffect);

// Release 0: Work with Arrays

var colors = ["purple","green","blue","silver"];
var horses = ["Jimm","Bob","Thunder","Sally"];

colors.push("black");
horses.push("Lucky");


for(var i = 0;i < horses.length; i++){
   console.log("This horse name is "+ horses[i]+" and his color is "+colors[i]);
}



// Release 1: Build an Object

var horse = {
  name:horses[0],
  color:colors[1]
};

// Release 2: Build Many Objects Using a Constructor


function Car(name,year,color){
  this.name = name;
  this.year = year;
  this.color = color;

  this.drive = function(){
    console.log("Driving") ;
  }

}

var newCar = new Car("Honda", 2016, "red");
// newCar.drive();
// console.log(newCar)


var newCar2 = new Car("Toyota", 2000, "black");
// newCar2.drive();
// console.log(newCar2)

// console.log(horses)
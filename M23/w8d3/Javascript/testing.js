// const TITLES = ["Mary", "Brian", "Leo"]
// function tittleize(names) {
//     let mappedArray = names.map(name => `Mx ${name} Jingleheimer Schmidt`);
//     } 
//     return mappedArray;
// };
// console.log(tittleize("Mary", "Brian", "Leo")());
// console.log(NUMS.myMap( function (num {
//   return num * num;
// }));

function titleize(names, printCallback) {
    let mappednames = names.map(name => `Mx ${name} Jingleheimer Schmidt`);
    printCallback(mappednames);
};
titleize(["Mary", "Brian", "Leo"], mappednames => {
    mappednames.forEach(name => console.log(name));
});

    // Array.prototype.myMap = function (func) {
    //     debugger
    //     const mappedArray = [];
    //     this.myEach(element => mappedArray.push(func(element)));
    //     return mappedArray;
    // };
    // console.log(NUMS.myMap(num => num * num));
// console.log(NUMS.myMap( function (num {
//   return num * num;
// }));

function Elephant(name, height, regundTricks) {
    this.name = name;
    this.height = `${height} in inches`;
    this.regundTricks = regundTricks;
};
Elephant.prototype.trumpet = function () {
    console.log(`${this.name}the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}
Elephant.prototype.grow = function () {
    this.height + 12;
}
Elephant.prototype.addTrick = function (trick) {
    regundTricks.push(trick);
}
Elephant.prototype.play = function () {
    debugger
    let trick = this.regundTricks[Math.floor(Math.random() * this.regundTricks.length)];
    console.log(`${this.name} is ${trick}!!!!!!!'`);
}
let hien = new Elephant("Hien", 2, ["barking", "dancing", "debugging", "coding"]);
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [hien, ellie, charlie, kate, micah];


Elephant.paradeHelper = function (elephant) {
    console.log(`${elephant} is trotting by`);
}
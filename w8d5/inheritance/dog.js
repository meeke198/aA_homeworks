var Animal = require("./animal.js")
var inherit = require("./inherit.js")

function Dog(name){
    this.name = name;
};

inherit(Animal, Dog)
Dog.prototype.woof = function(){
    console.log("woof, i am" + this.name)
};


module.exports = Dog;
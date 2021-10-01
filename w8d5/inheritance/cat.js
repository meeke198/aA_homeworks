var Animal = require("./animal.js")
var inherit = require("./inherit.js")

function Cat(name) {
    this.name = name;
};
inherit(Animal, Cat)
Cat.prototype.moew = function () {
    console.log("Moewwww, i am" + this.name)
};

module.exports = Cat;
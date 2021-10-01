function Cat(name) {
    this.name = name;
};

Cat.prototype.moew = function () {
    console.log("Moewwww, i am" + this.name)
};

module.exports = Cat;
function Animal(name) {
    this.name = name;
};

Animal.prototype.eat = function () {
    console.log("yumm, foood!!!")
};


module.exports = Animal;
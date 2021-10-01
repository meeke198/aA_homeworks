function Dog(name){
    this.name = name;
};

Dog.prototype.woof = function(){
    console.log("woof, i am" + this.name)
};

module.exports = Dog;
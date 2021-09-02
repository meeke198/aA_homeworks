require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cheesecake) {Dessert.new("cheesecake", 10, chef)}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq("cheesecake")
    end

    it "sets a quantity" do
      expect(cheesecake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(cheesecake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Desset.new("cheesecake", "ten", chef)}.to raise_error("non-integer quantity")
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.add_ingredient("whole milk")
      expect(cheesecake.ingredients).to include("whole milk")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(cheesecake.mix).to be(cheesecake.ingredients.shuffles)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(cheesecake.eat(2)).to eq(8)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect{cheesecake.eat(20))}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do

    it "contains the titleized version of the chef's name" do
      expect(chef).to receive(:titleize).with ()
      cheesecake.serve(chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    expect(chef).to receive(:bake).with ()
    cheesecake.make_more
    end
  end
end

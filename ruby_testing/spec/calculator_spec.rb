require './lib/calc'

describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
      expect(calculator.add(5, 2)).not_to eql(9)
    end
  end
  describe "#mult" do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5, 2)).to eql(10)
      expect(calculator.multiply(5, 2)).not_to eql(9)
    end
  end
  describe "#subt" do
    it "returns the difference of two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(5, 2)).to eql(3)
      expect(calculator.subtract(5, 2)).not_to eql(9)
    end
  end
end
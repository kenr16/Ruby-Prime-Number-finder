require('rspec')
require('prime_numbers')
require('pry')

describe("Fixnum#prime_numbers") do
  it("takes input value and returns an array which starts with 2 and ends with the input value") do
    expect(3.prime_numbers()).to(eq([3]))
  end
  it("takes mutltiples of two and removes them from the prime number array") do
    expect(6.prime_numbers()).to(eq([3, 5]))
  end
end

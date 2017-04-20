require('rspec')
require('prime_numbers')
require('pry')

describe("Fixnum#prime_numbers") do
  it("takes input value and returns an array which starts with 2 and ends with the input value") do
    expect(2.prime_numbers()).to(eq([2]))
  end

  it("takes mutltiples of two except two and removes them from the prime number array") do
    expect(6.prime_numbers()).to(eq([2, 3, 5]))
  end

  it("takes mutltiples of three except three and removes them from the prime number array") do
    expect(9.prime_numbers()).to(eq([2, 3, 5, 7]))
  end

  it("takes mutltiples of three except three and removes them from the prime number array") do
    expect(100.prime_numbers()).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]))
  end
end

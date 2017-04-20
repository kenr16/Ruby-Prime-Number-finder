require('rspec')
require('prime_numbers')
require('pry')

describe("Fixnum#prime_numbers") do
  it("takes input value and returns an array which starts with 2 and ends with the input value") do
    expect(3.prime_numbers()).to(eq([2, 3]))
  end
end

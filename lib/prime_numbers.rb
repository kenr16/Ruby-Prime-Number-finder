class Fixnum
  define_method(:prime_numbers) do
    array = []
    primes = [2]
    (self-1).times do |time|
      array.push(time+2)
    end
    array.each do |item|
      if item % 2 == 0
        array.delete(item)
      end
    end



    primes.concat(array)
    array
  end
end

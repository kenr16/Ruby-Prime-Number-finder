class Fixnum
  define_method(:prime_numbers) do
    array = []
    primes = [2]
    (self-1).times do |time|
      array.push(time+2)
    end
    array.each do |item|
      primes.each do |prime|
        if item % prime == 0
          array.delete(item)
        end
      end
    end



    primes.concat(array)
  end
end

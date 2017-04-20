class Fixnum
  define_method(:prime_numbers) do
    array = []
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23]
    (self-1).times do |time|
      array.push(time+2)
    end
    primes.each do |prime|
      array.each do |item|
        if item % prime == 0
          array.delete(item)
        end
      end
    end

    if self > 23
      output = primes.concat(array)
    elsif self < 23
      output = []
      primes.each do |prime|
        if prime < self
          output.push(prime)
        end
      end
    end

    output
  end
end

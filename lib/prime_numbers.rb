class Fixnum
  define_method(:prime_numbers) do
    array=[]
    (self-1).times do |time|
      array.push(time+2)
    end
    array
  end
end

data = File.readlines("input.txt")
inputs = data.map(&:strip).map(&:to_i)


def estimate_fuel(number)
  number / 3 - 2
end

def total_fuel(numbers)
  numbers.map { |n| estimate_fuel(n) }.reduce(:+)
end

puts "Answer is #{total_fuel(inputs)}."
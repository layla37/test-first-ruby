def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(my_array)
  result = 0
  for i in 0...my_array.length
    result += my_array[i]
  end
  return result
end

def multiply(*numbers)
  result = 1
  numbers.each {|n| result *= n}
  result
end

def power(a, b)
  return a ** b
end

def factorial(n)
  result = 1
  for i in 1..n
    result *= i
  end
  return result
end
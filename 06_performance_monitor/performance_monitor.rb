def measure (n = 1)
  diff = []
  for i in 1..n
    a = Time.now
    yield 
    b = Time.now
    x = b - a
    diff << x
  end
  total = 0
  for i in 0...diff.length
    total += diff[i]
  end
  return total/n
end
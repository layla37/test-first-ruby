
def reverser	
	x = yield
	y = x.split(/\s+/)
	z = y.map {|word| word.reverse}
	return z.join(" ")
end

def adder(n = 1)
	x = yield + n
	x
end

def repeater(num = 1)
	for i in 1..num
		yield
	end
end



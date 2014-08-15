class RPNCalculator

  def initialize
    @rpn_array = []
  end
  
  def push(num)
    @rpn_array << num
  end

  def plus    
    if @rpn_array.size >= 2
      x = @rpn_array.pop
      y = @rpn_array.pop
      sum = y + x
      @rpn_array << sum  
    else
      raise "calculator is empty"
    end
  end

  def minus
    if @rpn_array.size >= 2
      x = @rpn_array.pop
      y = @rpn_array.pop
      diff = y - x
      @rpn_array << diff
      else
      raise "calculator is empty"
    end
  end

  def divide
    if @rpn_array.size >= 2
      x = @rpn_array.pop
      y = @rpn_array.pop
      total = y.to_f / x.to_f
      @rpn_array << total
      else
      raise "calculator is empty"
    end
  end

  def times
    if @rpn_array.size >= 2
      x = @rpn_array.pop
      y = @rpn_array.pop
      product = y * x
      @rpn_array << product
      else
      raise "calculator is empty"
    end
  end

  def value
    @value = @rpn_array.last
  end

  def tokens(str)
    token_array = str.split(/\s+/)
    tokens = token_array.collect do |t|    
      if (t == "*") || (t == "/") || (t == "+") || (t == "-")
        t.to_sym
      else
        t.to_i
      end     
    end
    tokens
  end

  def evaluate(str)
    eval = tokens(str)
    eval.each do |x|
      if (x == :*) 
       self.times
      elsif (x == :-)
        self.minus
      elsif (x == :/)
        self.divide
      elsif (x == :+)
        self.plus
      else
        self.push(x)
      end
    end
    self.value
  end
    

end

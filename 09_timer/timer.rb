class Timer


  def initialize(seconds = 0)
    @seconds = seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def time_string
    h = @seconds/3600
    m = (@seconds/60) % 60
    s = @seconds % 60

    x = padded(h)
    y = padded(m)
    z = padded(s)

    return "#{x}:#{y}:#{z}"
  end

  def padded(num)
    x = num.to_s
    if x.length == 1 
     return "0" + x   
    end
    num.to_s
  end

end




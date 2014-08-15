class Temperature

  def initialize(options = {})
    @far = options[:f]
    @cel = options[:c]
  end

  def in_fahrenheit
    if @far
      return @far
    else
      return (@cel * 9.0/5.0) + 32 
    end
  end

  def in_celsius
    if @cel
      return @cel
    else
      return (@far - 32) * 5.0/9.0
    end
  end

  def self.from_fahrenheit(num)
    self.new(:f => num)
  end

  def self.from_celsius(num)
    self.new(:c => num)
  end

end

class Celsius < Temperature
    def initialize(num)
      @cel = num
    end
end

class Fahrenheit < Temperature
    def initialize(num)
      @far = num
    end
end



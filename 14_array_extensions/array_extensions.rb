class Array
  
  def sum
    if self.empty?
      0
    else
      total = 0
      for i in 0...self.length
        total += self[i]
      end
      total
    end
  end

  def square
    if self.empty?
      self
    else
      for i in 0...self.length
        self[i] *= self[i]
      end
      self
    end
  end

  def square!
    if self.empty?
      self
    else
      new_array = []
      for i in 0...self.length
        self[i] *= self[i]
        new_array << self[i]
      end
      new_array
    end
  end

end
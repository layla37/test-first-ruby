class Dictionary

  def initialize(options = {})
    @d = options
  end

  def entries
    @d
  end

  def add(options = {})
    if options.class == Hash
      options.each do |key, value| 
        @d[key] = value
      end
    elsif options.class == String
      @d[options] = nil
    end     
  end

  def include?(key)
    @d.include?(key)
  end

  def keywords
    @d.keys.sort
  end

  def find(letters)
    @d.select {|key, value| key.include? letters}
  end

  def printable
    @d.sort.map{|key, value| "[#{key}] \"#{value}\""}.join($/)   
  end

end



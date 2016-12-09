module PuppetTrueFalse
  class True
    @canonical = self.new

    @truisms = {
      't' => Class.new(self),
      'true' => Class.new(self),
      'True' => Class.new(self),
      'y' => Class.new(self),
      'yes' => Class.new(self),
      'Yes' => Class.new(self),
      '1' => Class.new(self),
      :'t' => Class.new(self),
      :'true' => Class.new(self),
      :'True' => Class.new(self),
      :'y' => Class.new(self),
      :'yes' => Class.new(self),
      :'Yes' => Class.new(self),
      :'1' => Class.new(self),
      1 => Class.new(self),
      true => Class.new(self)
    }

    def self.find(value)
      if @truisms[value]
        @truisms[value].new
      else
        raise "Truism for #{value} not found"
      end
    end

    def ==(other)
      if other.class <= self.class || self.class <= other.class
        true
      else
        false
      end
    end
  end
end

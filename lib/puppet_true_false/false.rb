module PuppetTrueFalse
  class False
    @canonical = self.new

    @fallacies = {
      'f' => Class.new(self),
      'false' => Class.new(self),
      'False' => Class.new(self),
      'n' => Class.new(self),
      'no' => Class.new(self),
      'No' => Class.new(self),
      '0' => Class.new(self),
      :'f' => Class.new(self),
      :'false' => Class.new(self),
      :'False' => Class.new(self),
      :'n' => Class.new(self),
      :'no' => Class.new(self),
      :'No' => Class.new(self),
      :'0' => Class.new(self),
      0 => Class.new(self),
      false => Class.new(self),
      nil => Class.new(self),
      'undef' => Class.new(self),
      :undef => Class.new(self),
      'null' => Class.new(self),
      'None' => Class.new(self),
      :null => Class.new(self),
      :None => Class.new(self)
    }

    def self.find(value)
      if @fallacies[value]
        @fallacies[value].new
      else
        raise "Fallacy for #{value} not found"
      end
    end

    def ==(other)
      if other.class <= self.class
        true
      else
        false
      end
    end
  end
end

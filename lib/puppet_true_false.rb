require 'puppet_true_false/true'
require 'puppet_true_false/false'

module PuppetTrueFalse
  def self.find(value)
    True.find(value)
  rescue
    begin
      False.find(value)
    rescue
      puts "Cannot find boolean for #{value.inspect}"
    end
  end

  def self.is_true(value)
    True.new == find(value)
  rescue
    false
  end

  def self.is_false(value)
    False.new == find(value)
  rescue
    false
  end
end

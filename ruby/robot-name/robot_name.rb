require 'pry'

class Robot
  attr_accessor :name

  def initialize
    @name = random_uniq_name
  end

  def random_uniq_name
    name = ""
    @@assigned_names||= []
    until @@assigned_names.include?(name)
      name << ("A".."Z").to_a.sample
      name << ("A".."Z").to_a.sample
      name << (0..9).to_a.sample.to_s
      name << (0..9).to_a.sample.to_s
      name << (0..9).to_a.sample.to_s
      @@assigned_names << name
    end
    name
  end

  def reset
    string = ""
    string << ("A".."Z").to_a.sample
    string << ("A".."Z").to_a.sample
    string << (0..9).to_a.sample.to_s
    string << (0..9).to_a.sample.to_s
    string << (0..9).to_a.sample.to_s
    @name = string
  end
  #random name generator
  # two uppercase letters + three digits
  # names can be reset to another name
  # same name is never used twice
end

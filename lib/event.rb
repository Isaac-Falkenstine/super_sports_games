require 'pry'
require './lib/standard_deviation'

class Event
  attr_reader :name,
              :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    total = 0.0
    ages.each do |ages|
      total += ages
    end
    total / ages.length
  end
  def standard_deviation_age
    standard_deviation(ages)
  end
  # binding.pry
end

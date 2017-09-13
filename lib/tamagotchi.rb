#!/usr/bin/env ruby

class Tamagotchi
  attr_reader :food, :sleep, :happiness, :name
  def initialize(name)
    @name = name
    @food = 10
    @sleep = 10
    @happiness = 10
  end


end

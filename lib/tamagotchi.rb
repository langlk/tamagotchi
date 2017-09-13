#!/usr/bin/env ruby

class Tamagotchi
  attr_reader :health, :rest, :happiness, :name
  def initialize(name)
    @name = name
    @health = 10
    @rest = 10
    @happiness = 10
  end

  def status
    alive = @health > 0 && @rest > 0 && @happiness > 0
    return {"alive" => alive, "health" => @health, "rest" => @rest, "happiness" => @happiness}
  end

  def decrease_stat(stat, points)
    if stat == "health"
      @health -= points
    elsif stat == "rest"
      @rest -= points
    elsif stat == "happiness"
      @happiness -= points
    end
  end
end

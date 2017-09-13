#!/usr/bin/env ruby

class Tamagotchi
  attr_reader :health, :rest, :happiness, :name
  def initialize(name)
    @name = name
    @health = 10
    @rest = 10
    @happiness = 10
    @last_check = Time.new
  end

  def status
    now = Time.new
    time_elapsed = now - @last_check
    @health -= (time_elapsed / 10).to_i
    @rest -= (time_elapsed / 10).to_i
    @happiness -= (time_elapsed / 10).to_i
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

  def feed
    @health += 5
  end

  def nap
    @rest += 5
  end

  def play
    @happiness += 5
  end
end

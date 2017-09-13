#!/usr/bin/env ruby

class Tamagotchi
  attr_reader :health, :rest, :happiness, :name, :time_unit
  def initialize(name)
    @name = name
    @health = 10
    @rest = 10
    @happiness = 10
    @last_check = Time.new
    @time_unit = 3600
  end

  def mode(game_mode)
    modes = {"normal" => 3600, "fast" => 60, "nightmare" => 1}
    @time_unit = modes[game_mode]
  end

  def status
    now = Time.new
    time_elapsed = (now - @last_check) / @time_unit
    @health -= (time_elapsed).to_i
    @rest -= (time_elapsed).to_i
    @happiness -= (time_elapsed).to_i
    @last_check = now
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

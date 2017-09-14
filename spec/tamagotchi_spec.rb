#!/usr/bin/env ruby

require 'rspec'
require 'tamagotchi'

describe('Tamagotchi') do
  it "stores a Tamagotchi's name, food, sleep, and happiness" do
    pet = Tamagotchi.new("Bob")
    expect(pet.name).to(eq("Bob"))
    expect(pet.status).to(eq({"alive" => true, "health" => 10, "rest" => 10, "happiness" => 10}))
  end

  it "reports a Tamagotchi's status" do
    pet = Tamagotchi.new("Bob")
    expect(pet.status).to(eq({"alive" => true, "health" => 10, "rest" => 10, "happiness" => 10}))
  end

  it "knows Tamagotchi is dead when any stat reaches 0" do
    pet = Tamagotchi.new("Bob")
    pet.decrease_stat("health", 10)
    expect(pet.status).to(eq({"alive" => false, "health" => 0, "rest" => 10, "happiness" => 10}))
  end

  it "adds 5 points to health when Tamagotchi is fed" do
    pet = Tamagotchi.new("Bob")
    pet.decrease_stat("health", 5)
    pet.feed
    expect(pet.status).to(eq({"alive" => true, "health" => 10, "rest" => 10, "happiness" => 10}))
  end

  it  "adds 5 points to rest when Tamagotchi sleeps" do
    pet = Tamagotchi.new("Bob")
    pet.decrease_stat("rest", 5)
    pet.nap
    expect(pet.status).to(eq({"alive" => true, "health" => 10, "rest" => 10, "happiness" => 10}))
  end

  it "adds 5 points to happiness when Tamagotch plays" do
    pet = Tamagotchi.new("Bob")
    pet.decrease_stat("happiness",5)
    pet.play
    expect(pet.status).to(eq({"alive" => true, "health" => 10, "rest" => 10, "happiness" => 10}))
  end

  it "sets [time unit] to 1 hour for normal mode, 1 minute for fast mode, and 1 second for nightmare mode" do
    pet = Tamagotchi.new("Bob")
    pet.mode("nightmare")
    expect(pet.time_unit).to(eq(1))
  end

  it "defaults to normal mode" do
    pet = Tamagotchi.new("Bob")
    expect(pet.time_unit).to(eq(3600))
  end

  it "removes 1 point from each stat every time unit" do
    pet = Tamagotchi.new("Bob")
    pet.mode("nightmare")
    sleep(1)
    expect(pet.status).to(eq({"alive" => true, "health" => 9, "rest" => 9, "happiness" => 9}))
    sleep(9)
    expect(pet.status).to(eq({"alive" => false, "health" => 0, "rest" => 0, "happiness" => 0}))
  end
end

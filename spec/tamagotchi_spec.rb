#!/usr/bin/env ruby

require 'rspec'
require 'tamagotchi'

describe('Tamagotchi') do
  it "stores a Tamagotchi's name, food, sleep, and happiness" do
    pet = Tamagotchi.new("Bob")
    expect(pet.name).to(eq("Bob"))
    expect(pet.health).to(eq(10))
    expect(pet.rest).to(eq(10))
    expect(pet.happiness).to(eq(10))
  end

  it "reports a Tamagotchi's status" do
    pet = Tamagotchi.new("Bob")
    expect(pet.status).to(eq({"alive" => true, "health" => 10, "rest" => 10, "happiness" => 10}))
  end
end

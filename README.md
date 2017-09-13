# Tamagotchi

#### _Project in Ruby_

#### By Kelsey Langlois & Mitch Long

## Description

_A Ruby Script_

## Setup/Installation Requirements

* Clone this repository

## Specifications

* Program stores a Tamagotchi's name, food, sleep, and happiness levels.
  * Example input: pet = Tamagotchi.new("Bob")
  * Example output: pet.name = "Bob" pet.health = 10, pet.rest = 10, pet.happiness = 10
* Program reports Tamagotchi's status.
  * Example input: pet.status
  * Example output: {health => 10, pet.rest => 10, pet.happiness => 10}
* Program raises Tamagotchi's health by 5 when Tamagotchi is fed.
  * Example input: pet.health = 5, pet.feed
  * Example output: pet.health = 10
* Program raises Tamagotchi's rest by 5 when Tamagotchi sleeps.
  * Example input: pet.rest = 5, pet.sleep
  * Example output: pet.rest = 10
* Program raises Tamagotchi's happiness by 5 when Tamagotchi plays.
  * Example input: pet.happiness = 5, pet.play
  * Example output: pet.happiness = 10
* Program removes 1 health, rest, and happiness for each [time unit] that passes.
  * Example input: pet.health = 10, pet.rest = 10, pet.happiness = 10, 3 [time units] go by
  * Example output: pet.health = 7, pet.rest = 7, pet.happiness = 7
* Program knows Tamagotchi is dead when any stat reaches 0.
  * Example input: pet.health = 7, pet.rest = 7, pet.happiness = 0
  * Example output: "Your Tamagotchi has died."
  
## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby

### License

Copyright (c) 2017 **Kelsey Langlois & Mitch Long**

*This software is licensed under the MIT license.*

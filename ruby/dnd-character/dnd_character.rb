# frozen_string_literal: true

# DndCharacter class
class DndCharacter
  attr_reader :agility, :charisma, :constitution, :dexterity, :hitpoints, :intelligence, :strength, :wisdom

  BASE_HP = 10
  def self.modifier(stat)
    ((stat - 10) / 2).floor
  end

  def initialize
    @agility = generate_attribute
    @charisma = generate_attribute
    @constitution = generate_attribute
    @dexterity = generate_attribute
    @intelligence = generate_attribute
    @strength = generate_attribute
    @wisdom = generate_attribute
    @hitpoints = BASE_HP + DndCharacter.modifier(@constitution)
  end

  def roll(num_dice_sides)
    rand(1..num_dice_sides)
  end

  def generate_attribute
    4.times.map { roll(6) }.sort.slice(0..2).sum
  end
end

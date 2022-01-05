# frozen_string_literal: true

require_relative 'pokedex/version'
require_relative 'pokedex/client'
require_relative 'pokedex/pokemon'
require_relative 'pokedex/skills'
require_relative 'pokedex/report/report'
module Pokedex
  class Error < StandardError; end

  # Your code goes here...
  def self.Pokemon(name_or_id)
    Pokemon.new.pokemon(name_or_id)
  end

  def self.Find_pokemon(letter, numer = 100)
    Pokemon.new.find_pokemon(letter, numer = 100)
  end

  def self.Pokemon_filter(name_or_id, filter)
    Pokemon.new.pokemon(name_or_id, filter)
  end

  def self.Random_pokemon
    Pokemon.new.random
  end

  def self.Ability_Skills(id)
    Skills.new.ability(id)
  end

  def self.Type_Skills(id)
    Skills.new.type(id)
  end
end

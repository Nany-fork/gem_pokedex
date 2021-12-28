# frozen_string_literal: true

require_relative "pokedex/version"
require_relative "pokedex/client"
require_relative "pokedex/pokemon"
require_relative "pokedex/skills"
module Pokedex
  class Error < StandardError; end
  # Your code goes here...
  def self.Pokemon(name)
    Pokemon.new.get_pokemon(name)
  end
  def self.Pokemon(id)
    Pokemon.new.get_abilities_pokemons(id)
  end
  def self.Pokemon(id)
    Pokemon.new.get_type_pokemons(id)
  end
  def self.Pokemon(name)
    Pokemon.new.get_random_pokemon
  end
end

# frozen_string_literal: true

require_relative "pokedex/version"
require_relative "pokedex/client"
require_relative "pokedex/pokemon"
module Pokedex
  class Error < StandardError; end
  # Your code goes here...
  def self.Pokemon(name)
    Pokemon.new.get_pokemon(name)
  end
end

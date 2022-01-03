# frozen_string_literal: true

require './test_helper'

class PokedexTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Pokedex::VERSION
  end

  def test_get_ability
    VCR.use_cassette('Ability_Skills') do
      pokemon = Pokedex.Ability_Skills(5)
      assert_instance_of Hash, pokemon
    end
  end

  def test_get_type
    VCR.use_cassette('Type_Skills') do
      pokemon = Pokedex.Type_Skills(5)
      assert_instance_of Hash, pokemon
    end
  end

  def test_get_pokemon
    VCR.use_cassette('Pokemon') do
      pokemon = Pokedex.Pokemon('pikachu')
      assert_instance_of Hash, pokemon
    end
  end

  def test_get_pokemon_with_filter
    VCR.use_cassette('Pokemon_filter') do
      pokemon = Pokedex.Pokemon_filter('pikachu', 'moves')
      assert_instance_of Array, pokemon
    end
  end
  
end

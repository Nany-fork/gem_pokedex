# frozen_string_literal: true


require '../test_helper'

module Pokedex
  class ClientTest < Minitest::Test
    def client
      Client.new
    end

    def test_Client_class_exist
      refute_nil Client.new
    end

    # def test_rescue_exceptions
    #   VCR.use_cassette('Get_exception_pokemon') do
    #     pokemon = Pokedex::Client.new
    #     pokemon.get('pokemon/dittos')
    #     assert_raise ["zubat"], pokemon
    #   end
    # end
  end
end

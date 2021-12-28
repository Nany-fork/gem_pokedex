
require "minitest/ruby"
module Pokedex
    class ClientTest < Minitest::Test
        def client
            Client.new("https://pokeapi.co/api/v2/pokemon/ditto")
        end

        def test_Client_class_exist
            refute_nil Client.new("https://pokeapi.co/api/v2/pokemon/ditto")
        end
    end 
end
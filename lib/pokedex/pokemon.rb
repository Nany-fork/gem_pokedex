module Pokedex
    class Pokemon
        def initialize
            @client = Client.new("https://pokeapi.co/api/v2")
        end
        
        def get_pokemon(name)
            client.get("#{name}")
        end
        private 

        attr_reader :client
    end
end
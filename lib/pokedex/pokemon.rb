module Pokedex
    class Pokemon
        def initialize
            @client = Client.new("https://pokeapi.co/api/v2")
        end
        
        def get_random_pokemon 
            client.get("pokemon/#{rand(898)}")
        end

        def get_pokemon(name)
            client.get("pokemon/#{name}")
        end

        def get_abilities_pokemons(id)
            if id > 267
                return "Number of abilities exceded, try with #{rand(267)}"
            else 
                client.get("pokemon/#{id}")
            end
        end

        def get_type_pokemons(id)
            if id > 18
                return "Number of types exceded, try with #{rand(18)}"
            else
                client.get("type/#{id}")
            end
        end

        private 

        attr_reader :client
    end
end
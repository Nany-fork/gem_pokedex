module Pokedex
    class Pokemon
        def initialize
            @client = Client.new()
        end
        
        def random
          pokemon(rand(898))
        end

        def pokemon(name_or_id)
           result =  client.get("pokemon/#{name_or_id}")
           {name: result['name'], abilities: result['abilities']}
        end
        
        private 

        attr_reader :client
    end
end
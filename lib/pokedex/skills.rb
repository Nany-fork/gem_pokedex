module Pokedex
    class Skills
        def initialize
            @client = Client.new()
        end
    
        def ability(id)
            if id > 267
                raise "Number of abilities exceded, try with a value below 267"
            else 
               result =  client.get("ability/#{id}")
               {name: result['name'], pokemon: result['pokemon']}
            end
        end
    
        def type(id)
            if id > 18
                raise "Number of types exceded, try with a value below 267"
            else
               result = client.get("type/#{id}")
               {name: result['name'], pokemon: result['pokemon'] }
            end
        end
        private 

        attr_reader :client
    end
end
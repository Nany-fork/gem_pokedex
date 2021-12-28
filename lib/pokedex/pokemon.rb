module Pokedex
    class Pokemon
        def initialize
            @client = Client.new()
            @report = Report.new()
        end
        
        def random (filter = nil)
          pokemon(rand(898), filter)
        end

        def pokemon(name_or_id, filter = nil)
           result =  client.get("pokemon/#{name_or_id}")
        #    {name: result['name'], abilities: result['abilities']}
        report.filter_pokemon(result,filter)
        end

        private 

        attr_reader :client , :report
    end
end
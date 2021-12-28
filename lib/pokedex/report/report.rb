module Pokedex
    class Report
        def initialize
            @array= []
        end
        
        def filter_pokemon (result, filter)
            if filter == nil
                {name: result['name'], abilities: result['abilities']}
            else
                for i in result["#{filter}"] do
                    @array.push(i)
                end  
                @array
            end
        end 

        def filter_skills (result, filter)
            if filter == nil
                {name: result['name'], pokemon: result['pokemon']}
            else
                for i in result["#{filter}"] do
                    @array.push(i)
                end  
                @array
            end
        end 
       
    end
end
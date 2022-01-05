# frozen_string_literal: true

module Pokedex
  class Report
    def initialize
      @array = []
    end

    def filter_pokemon(result, key )
      if key
        filter(result, key)
      else
        { name: result['name'], abilities: result['abilities'] }
      end
    end

    def filter_skills(result, key )
      if key
        filter(result, key)
      else
        { name: result['name'], pokemon: result['pokemon'] }
        end
      end


    def filter(result, key)
      result[key.to_s].each do |i|
        @array.push(i)
      end
      @array
    end
    
   
    
  end
end

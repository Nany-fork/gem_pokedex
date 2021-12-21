require "net/http"
require "uri"
require "json"

module Pokedex
    class Client
        def initialize (base_url)
            @base_url = base_url
        end
        
        def get(path)
            uri = URI("#{@base_url}/#{path}")
            res = Net::HTTP.get_response(uri)
            if !res.is_a?(Net::HTTPSuccess)
                return 'Please check your request path'
            else 
              if path['pokemon']
                result = JSON.parse(res.body)
                filter = {'Nombre' => result['name'],'Habilidades' => result['abilities']}
              elsif path['type']
                result = JSON.parse(res.body)
                filter = {'Type' => result['name'],'pokemones' => result['pokemon']}
              elsif path['ability']
                result = JSON.parse(res.body)
                filter = {'Ability type' => result['name'],'pokemones' => result['pokemon']}
              end 
            end
         end

         private 
         attr_reader :base_url
    end
end
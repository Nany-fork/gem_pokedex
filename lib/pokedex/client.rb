require "net/http"
require "uri"
require "json"

module Pokedex
    class Client
        def init (base_url)
            @base_url = base_url
        end
        
        def get(path)
            uri = URI("#{@base_url}/#{path}")
            res = Net::HTTP.get_response(uri)
            if !res.is_a?(Net::HTTPSuccess)
                return 'Please check your request path'
            else 
                JSON.parse(res.body, symbolize_names: true)
            end
         end
    end
end
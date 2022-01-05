# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'

module Pokedex
  class Client
    def initialize
      @base_url = 'https://pokeapi.co/api/v2'
    end

    def get(path, param = nil)
      uri_result = URI("#{base_url}/#{path}")
        if param  
          params = { :limit => param }
          uri_result.query= URI.encode_www_form(params)
          res = Net::HTTP.get_response(uri_result)
          hanlde_call(res)
        else
          res = Net::HTTP.get_response(uri_result)
          hanlde_call(res)
      end
    end

    private

    def hanlde_call(res)
     begin
      JSON.parse(res.body)
     rescue 
       "Message error: #{res.message}"
     end
    end

    attr_reader :base_url
  
  end
end

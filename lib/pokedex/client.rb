# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'json'

module Pokedex
  class Client
    def initialize
      @base_url = 'https://pokeapi.co/api/v2'
    end

    def get(path)
      uri = URI("#{@base_url}/#{path}")
      res = Net::HTTP.get_response(uri)
      return unless res.is_a?(Net::HTTPSuccess)

      result = JSON.parse(res.body)
    end

    private

    attr_reader :base_url
  end
end

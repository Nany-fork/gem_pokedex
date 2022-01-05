# frozen_string_literal: true

module Pokedex
  class Pokemon
    def initialize
      @client = Client.new
      @report = Report.new
    end

    def random(filter = nil)
      pokemon(rand(897), filter)
    end

    def pokemon(name_or_id, filter = nil)
      result = client.get("pokemon/#{name_or_id}")
      report.filter_pokemon(result, filter)
    end

    def find_pokemon(letter, number = 100)
      array = []
      if letter.length == 1
        result =  client.get("pokemon",number)
        t = Thread.new { 
        result['results'].each do |r|
          if  r['name'][/^[a-z]/] == letter
            array.push(r['name'])
          end   
        end
       }
        t.join
        array
      else
        raise "Please give me one letter to find coincidences"
      end
    end
    private

    attr_reader :client, :report
  end
end

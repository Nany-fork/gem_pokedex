# frozen_string_literal: true

module Pokedex
  class Skills
    def initialize
      @client = Client.new
      @report = Report.new
    end

    def ability(id, filter = nil)
      if id > 267
        raise 'Number of abilities exceded, try with a value below 267'
      else
        result = client.get("ability/#{id}")
        report.filter_skills(result, filter)
      end
    end

    def type(id, filter = nil)
      if id > 18
        raise 'Number of types exceded, try with a value below 267'
      else
        result = client.get("type/#{id}")
        report.filter_skills(result, filter)
      end
    end

    private

    attr_reader :client, :report
  end
end

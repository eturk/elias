module Elias
  class Attraction
    def initialize(data = {})
      data.each do |k, v|
        instance_variable_set("@#{k}", v)
        instance_eval "def #{k}() @#{k} end"
      end
    end

    def info
      Elias::Attraction.new(Elias::Client.connection.get("#{self.park.permalink}/attractions/#{self.permalink}.json").body)
    end
  end
end

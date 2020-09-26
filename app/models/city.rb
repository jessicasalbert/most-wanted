class City < ApplicationRecord
    has_many :cases

    def display_name
        if self.name == "washingtondc"
            "Washington D.C."
        elsif self.name == "sandiego"
            "San Diego"
        elsif self.name == "sanfrancisco"
            "San Francisco"
        elsif self.name == "losangeles"
            "Los Angeles"
        elsif self.name == "kansascity"
            "Kansas City"
        elsif self.name == "stlouis"
            "St. Louis"
        elsif self.name == "saltlakecity"
            "Salt Lake City"
        elsif self.name == "sanjuan"
            "San Juan"
        elsif self.name == "newhaven"
            "New Haven"
        elsif self.name == "elpaso"
            "El Paso"
        elsif self.name == "lasvegas"
            "Las Vegas"
        elsif self.name == "neworleans"
            "New Orleans"
        elsif self.name == "oklahomacity"
            "Oklahoma City"
        elsif self.name == "sanantonio"
            "San Antonio"
        elsif self.name == "littlerock"
            "Little Rock"
        else
            self.name.capitalize
        end
    end

    def self.ordered
        City.all.order(:name)
    end

end

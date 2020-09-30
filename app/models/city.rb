class City < ApplicationRecord
    has_many :crimes
    has_many :users


    def self.ordered
        City.all.order(:name)
    end

    def self.ordered_by_crimes
        #City.all.order { |city| city.crimes.count }
        
         #crimes.count
    end
       

end

class City < ApplicationRecord
    has_many :crimes
    has_many :users


    def self.ordered
        City.all.order(:name)
    end

    def self.ordered_by_crimes
        City.all.sort_by{|c| c.crimes.length}.reverse
    end
       
    def most_wanted_by_city
        self.crimes.order(reward: :desc).limit(5)
    end

end

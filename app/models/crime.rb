class Crime < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :users, through: :updates
    has_many :anon_tips


    def self.random_crimes
        randoms = []
        5.times do 
            randoms << Crime.all.sample
        end
        randoms
    end

    def self.five_most_wanted
        Crime.all.order(reward: :desc).limit(5)
    end

end

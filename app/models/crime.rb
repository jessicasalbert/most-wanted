class Crime < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :users, through: :updates
    has_many :anon_tips
    has_one_attached :user_image


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

    def filter_details
        if self.details
            string = self.details.split(/<p>|<\/p>|<br \/>/)
            string = string.join("")
        else
            nil
        end
    end

    def filter_caution
        if self.caution
            string = self.caution.split(/<p>|<\/p>|<br \/>/)
            string.join("")
        else
            nil
        end
    end

    def filter_remarks
        if self.remarks
            string = self.remarks.split(/<p>|<\/p>|<br \/>/)
            string.join("")
        else
            nil
        end
    end

    def filter_birthdays
        if self.birthday
            string = self.birthday.split(/\[|"|\]/)
            string.join("")
        else
            "N/A"
        end
    end

    def filter_aliases
        if self.alias
            string = self.alias.split(/\[|"|\]|\\|\//)
            string.join("")
        else
            "N/A"
        end
    end

end

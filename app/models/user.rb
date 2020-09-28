class User < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :crimes, through: :updates
    has_secure_password
    validates :username,:badge_id, uniqueness: true
    validates :name, :badge_id, :password, presence: true

    
    def check_badge_number
    end
end

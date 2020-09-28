class User < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :crimes, through: :updates
    has_secure_password
    validates :username,:badge_id, uniqueness: true
    validates :name, :badge_id, :password, presence: true
    validates :badge_id, numericality: { greater_than_or_equal_to: 1000000, less_than_or_equal_to: 9999999, message: " ID must be 7 digits"}

    # validate :check_badge_id
    
    # def check_badge_id
    #     if params[:badge_id] != self.badge_id
    #         errors.add(:badge_id, "ID is incorrect")
    #     end
    # end
 
end

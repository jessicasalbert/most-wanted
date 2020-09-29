class User < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :crimes, through: :updates
    has_secure_password
    validates :username,:badge_id, uniqueness: true
    validates :name, :badge_id, :password, presence: true
    validates :badge_id, numericality: { greater_than_or_equal_to: 1000000, less_than_or_equal_to: 9999999, message: " ID must be 7 digits"}

 
end

class User < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :crimes, through: :updates
end

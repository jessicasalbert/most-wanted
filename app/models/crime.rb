class Crime < ApplicationRecord
    belongs_to :city
    has_many :updates
    has_many :users, through: :updates


end

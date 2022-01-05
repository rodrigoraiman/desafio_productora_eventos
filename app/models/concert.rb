class Concert < ApplicationRecord
    has_many :concert_groups
    has_many :concert_groups, through: :concert_groups

end

class Group < ApplicationRecord
    has_many :concert_groups
    has_many :concerts, through: :concert_groups
end

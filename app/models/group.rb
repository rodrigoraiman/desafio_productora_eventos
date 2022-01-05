class Group < ApplicationRecord
    has_many :concert_groups
    has_many :concerts, through: :concert_groups

    def total_concerts
        self.concerts.count
    end
    enum team: [:hombres, :mujeres, :banda]
end

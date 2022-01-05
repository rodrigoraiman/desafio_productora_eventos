class ConcertGroup < ApplicationRecord
  belongs_to :concert
  belongs_to :group
end

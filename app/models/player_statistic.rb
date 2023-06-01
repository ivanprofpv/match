class PlayerStatistic < ApplicationRecord
  belongs_to :player
  belongs_to :game
  belongs_to :achivment
  belongs_to :team
end

class Game < ApplicationRecord
  belongs_to :team
  has_many :player_statistics

  accepts_nested_attributes_for :team, reject_if: :all_blank
end

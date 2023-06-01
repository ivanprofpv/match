class Achivment < ApplicationRecord
  has_many :player_statistics

  # def top_players_by_stat(team, achivment, limit=5)
  #   Player.joins(:player_statistics).where(player_statistics: {achivment: achivment, team: team}).group("players.id").order("count(*) desc").limit(limit)
  # end
end

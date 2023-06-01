class Player < ApplicationRecord
  has_many :achivments
  has_many :player_statistics
  belongs_to :team

  accepts_nested_attributes_for :team, reject_if: :all_blank

  def player_achieved_in_last_5_games?(player, team, achivment)
    last_5_games = team.games.order(created_at: :desc).first(5)
    player_statistics = PlayerStatistic.where(player: player, 
                                             game: last_5_games, 
                                             achivment: achivment)
    player_statistics.any? 
  end

  def self.top_players_by_achivment(achivment, team = nil)
    if team 
      players = self.joins(:player_statistics).where(team: team, player_statistics: {achivment: achivment}).group('players.id').order('count(*) DESC').limit(5)
    else
      players = self.joins(:player_statistics).where(player_statistics: {achivment: achivment}).group('players.id').order('count(*) DESC').limit(5)
    end
  end 
end

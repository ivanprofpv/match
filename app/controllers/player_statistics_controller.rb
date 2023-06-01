class PlayerStatisticsController < ApplicationController
  def show_top
    if params[:achivment_id].present? && params[:team_id].present?
      @achivment = Achivment.find_by(id: params[:achivment_id])
      @team = Team.find_by(id: params[:team_id])
      @players = Player.top_players_by_achivment(params[:achivment_id], params[:team_id])
    elsif params[:achivment_id].present?
      @achivment = Achivment.find_by(id: params[:achivment_id]) 
      @players = Player.top_players_by_achivment(params[:achivment_id])
    end 
  end

  def new
    @player_statistic = PlayerStatistic.new
  end

  def create
    @player_statistic = PlayerStatistic.create!(playerstatistic_params)
    redirect_to root_path if @player_statistic.save
  end

  private

  def playerstatistic_params
    params.require(:player_statistic).permit(:player_id, :game_id, :achivment_id, :team_id)
  end

  def set_player
    @player = Player.find(params[:id])
  end

  def set_achivment
    @achivment = Achivment.find_by(params[:id])
  end
end

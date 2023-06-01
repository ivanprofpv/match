class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @players = Player.all
    @achivments = Achivment.all
    @games = Game.all
    @player_statistics = PlayerStatistic.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create!(team_params)
    redirect_to root_path if @team.save
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end

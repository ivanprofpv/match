class PlayersController < ApplicationController
  before_action :set_player, only: %i[show]
  before_action :set_achivment, only: %i[show]

  def show
    @team = @player.team
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create!(player_params)
    redirect_to root_path if @player.save
  end

  private

  def player_params
    params.require(:player).permit(:name, :team_id)
  end

  def set_player
    @player = Player.find(params[:id])
  end

  def set_achivment
    @achivment = Achivment.find_by(params[:id])
  end
end

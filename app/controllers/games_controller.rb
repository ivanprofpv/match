class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.create!(game_params)
    redirect_to root_path if @game.save
  end

  private

  def game_params
    params.require(:game).permit(:name, :team, :team_id)
  end
end

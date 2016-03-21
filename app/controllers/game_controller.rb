class GameController < ApplicationController
  def new
    @game = Game.new
    render json: @game
  end

  def shoot
    @game = Game.current_game
    render json: @game.shoot(game_params)
  end

  private

  def game_params
    params.permit(:xy)
  end
end

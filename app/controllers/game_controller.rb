class GameController < ApplicationController
  before_action :set_current_game, only: [:shoot, :save, :show]

  def new
    @game = Game.new
    render json: @game
  end

  def shoot
    render json: @current_game.shoot(game_params)
  end

  def save
    render json: @current_game.save(game_params)
  end

  def show
    render json: @current_game
  end

  private

  def game_params
    params.permit(:xy)
  end

  def set_current_game
    @current_game = Game.find_game(params[:id])
  end
end

class GameController < ApplicationController
  def new
    @game = Game.new
    render json: @game
  end
end

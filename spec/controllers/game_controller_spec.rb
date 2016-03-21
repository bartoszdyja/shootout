require 'rails_helper'

RSpec.describe GameController, type: :controller do
  describe 'GET new' do
    game = Game.new
    it 'should be success' do
      get :new
      expect(response.status).to eq 200
    end

    it 'should assing new game' do
      expect(game).to respond_to(:turn)
      expect(game.turn).to eq('shoot').or eq('save')
    end

    it 'should set initial score to 0' do
      expect(game.score).to eq 0
    end
  end

  describe 'POST shoot' do
    game = Game.new
    it 'should have shoot method' do
      expect(game).to respond_to(:shoot)
    end

    it 'should return a json' do
      post :shoot
      expect(response.content_type).to eq "application/json"
    end
  end
end

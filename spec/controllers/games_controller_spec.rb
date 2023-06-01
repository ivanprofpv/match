require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  let(:team) { create(:team) }
  
  describe 'GET #new' do
    it 'assigns a new Game to @game' do
      get :new
      expect(assigns(:game)).to be_a_new(Game)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Game' do
        expect {
          post :create, params: { game: attributes_for(:game, team_id: team.id) }
        }.to change(Game, :count).by(1)
      end

      it 'redirects to root_path' do
        post :create, params: { game: attributes_for(:game, team_id: team.id) }
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
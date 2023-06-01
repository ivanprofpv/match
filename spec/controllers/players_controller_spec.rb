require 'rails_helper'

RSpec.describe PlayersController, type: :controller do
  let(:team) { create(:team) }
  let(:player) { create(:player, team: team) }
  
  describe 'GET #show' do
    it 'assigns the requested player to @player' do
      get :show, params: { id: player.id }
      expect(assigns(:player)).to eq player
    end

    it 'assigns the player team to @team' do
      get :show, params: { id: player.id }
      expect(assigns(:team)).to eq player.team
    end
  end

  describe 'GET #new' do
    it 'assigns a new Player to @player' do
      get :new
      expect(assigns(:player)).to be_a_new(Player)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Player' do
        expect {
          post :create, params: { player: attributes_for(:player, team_id: team.id) }
        }.to change(Player, :count).by(1)
      end

      it 'redirects to the root_path' do
        post :create, params: { player: attributes_for(:player, team_id: team.id) }
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
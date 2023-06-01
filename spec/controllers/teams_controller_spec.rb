require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  let(:team) { create(:team) }

  describe 'GET #index' do
    it 'assigns all teams to @teams' do
      get :index
      expect(assigns(:teams)).to eq([team])
    end
  end

  describe 'GET #new' do
    it 'assigns a new Team to @team' do
      get :new
      expect(assigns(:team)).to be_a_new(Team)
    end
  end  

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates a new Team' do
        expect {
          post :create, params: {team: attributes_for(:team)} 
        }.to change(Team, :count).by(1)
      end

      it 'redirects to root_path' do
        post :create, params: {team: attributes_for(:team)} 
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
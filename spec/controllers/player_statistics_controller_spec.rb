require 'rails_helper'

RSpec.describe PlayerStatisticsController, type: :controller do
  let(:player) { create(:player) }
  let(:achivment) { create(:achivment) }
  let(:team) { create(:team) }

  describe 'GET #show_top' do
    context 'with achivment_id and team_id' do 
      it 'assigns the requested achivment to @achivment' do
        get :show_top, params: { achivment_id: achivment.id, team_id: team.id }
        expect(assigns(:achivment)).to eq achivment
      end

      it 'assigns the requested team to @team' do
        get :show_top, params: { achivment_id: achivment.id, team_id: team.id }
        expect(assigns(:team)).to eq team
      end
    end

    context 'with only achivment_id' do
      it 'assigns the requested achivment to @achivment' do
        get :show_top, params: { achivment_id: achivment.id }
        expect(assigns(:achivment)).to eq achivment
      end
    end
  end  

  describe 'GET #new' do
    it 'assigns a new PlayerStatistic to @player_statistic' do
      get :new
      expect(assigns(:player_statistic)).to be_a_new(PlayerStatistic)
    end
  end
end  
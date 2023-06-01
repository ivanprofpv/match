require 'rails_helper'

RSpec.describe AchivmentsController, type: :controller do

  describe 'GET #new' do
    it 'assigns a new Achivment to @achivment' do
      get :new
      expect(assigns(:achivment)).to be_a_new(Achivment)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Achivment' do
        expect {
          post :create, params: { achivment: attributes_for(:achivment) }
        }.to change(Achivment, :count).by(1)
      end

      it 'redirects to root_path' do
        post :create, params: { achivment: attributes_for(:achivment) } 
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
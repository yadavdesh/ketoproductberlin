require 'rails_helper'



# user signup
describe UsersController, type: :controller do
    context 'user sign_in'do
      before do
        @user = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:user)
      end

    #User logged-in in test
  describe 'get #show'do
    context 'when a user is logged in' do

      before do
        sign_in @user
      end

      it 'loads correct user details' do
        get :show, params: { id: @user.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq @user
      end
    end

    # User not logged-in
    context 'When a user is not logged in' do

        it 'redirects to login' do
          get :show, params: { id: @user.id }
          expect(response).to redirect_to(new_user_session_path)
        end
      end

    end
  end
end

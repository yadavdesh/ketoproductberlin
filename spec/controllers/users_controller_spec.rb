require 'rails_helper'



# user signup
describe UsersController, type: :controller do
    context 'user sign_in'do
      before do
        @user = User.create!(first_name: "dtest", last_name: "db", email: "dbtest1@gmail.com", password: "123456")
        @user2 = User.create!(first_name: "vtest", last_name: "vb", email: "dbtest2@gmail.com", password: "123456")
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

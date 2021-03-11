require 'rails_helper'

RSpec.describe RegionsController, type: :controller do

    context 'unauthenticated users' do
        it 'redirects to the sign in screen' do
            get :index
            expect(response).to redirect_to(new_user_session_url)
            get :show, params: {id: 'fake'}
            expect(response).to redirect_to(new_user_session_url)
            get :new
            expect(response).to redirect_to(new_user_session_url)
            post :create
            expect(response).to redirect_to(new_user_session_url)
        end
    end

    # context 'organization users' do 
    #     before do
    #         #sign_in()
    #         #allow(controller).to receive(:current_user).and_return(build(:user, :organization))
    #     end

    #     it 'redirects to the dashboard' do
    #         get :index
    #         expect(response).to redirect_to(dashboard_url)
    #         get :show, params: {id: 'fake'}
    #         expect(response).to redirect_to(dashboard_url)
    #         get :new
    #         expect(response).to redirect_to(dashboard_url)
    #         post :create
    #         expect(response).to redirect_to(dashboard_url)
    #     end
    # end

end

require 'rails_helper'

RSpec.describe OrganizationsController, type: :controller do
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

end

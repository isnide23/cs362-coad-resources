FactoryBot.define do
    factory :user do
        sequence(:email) { |i| "fake#{}@example.com" }
        
        password { 'fakepassword' }
        password_confirmation { 'fakepassword' }

        trait 'org_role' do
            organization
            role { 'organization' } 
        end

        trait 'admin_role' do
            role { 'admin' } 
        end
    end

end
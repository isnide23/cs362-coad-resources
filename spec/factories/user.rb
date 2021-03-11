FactoryBot.define do
    factory :user do
        sequence(:email) { |i| "fake#{}@example.com" }
        
        password { 'fakepassword' }
        password_confirmation { 'fakepassword' }

        trait :admin do
            organization
            role { 'organization' } 
        end

        trait :admin do
            role { 'admin' } 
        end
    end

end
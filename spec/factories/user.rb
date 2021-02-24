FactoryBot.define do
    factory :user do
        email { 'fake@example.com' }
        role { 'organization' }
        organization
        password { 'FAKEPASSWORD' }
        trait :admin do
           role { 'admin' } 
        end
    end

end
FactoryBot.define do
    factory :user do
        email { 'fake@example.com' }
        role { 'organization' }
        organization
        encrypted_password { 'FAKE' }
    end

end
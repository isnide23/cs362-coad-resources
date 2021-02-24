FactoryBot.define do
    factory :organization do
        sequence(:name) { |i| "Fake Name #{i}" }
        sequence(:email) { |i| "test#{i}@test.com" } 
        phone { '1541-555-5555' }
        status { 1 }
        primary_name { 'fake' }
        secondary_name { 'fake' }
        secondary_phone { '1541-555-5555' }
        description { 'fake' }
    end
end
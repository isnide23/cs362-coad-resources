FactoryBot.define do
    factory :ticket do
        name { 'Fake Name' }
        description { 'Fake Descriptor'}
        phone { '555-123-1234' }
        closed: true
        region
        resource_category
        
        trait :closed do
            closed: true
        end

        trait :open do
            closed: false
        end
    end

end

FactoryBot.define do
    factory :ticket do
        sequence(:name) { |i| "Fake Name #{i}" }
        description { 'Fake Descriptor'}
        phone { '+15551231234' }
        closed { true }
        region
        resource_category
        organization
        
        trait :closed do
            closed { true }
        end

        trait :open do
            closed { false }
        end
    end

end

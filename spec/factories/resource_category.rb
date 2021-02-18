FactoryBot.define do

    factory :resource_category do
        sequence(:name) { |i| "Fake Name #{i}" }
    end


end

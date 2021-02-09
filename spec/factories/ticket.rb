FactoryBot.define do
    factory :ticket do
        name: {'Fake Descriptor'}
        phone: {'555-123-1234'}
        region: { Region.new(name: 'Fake')}
        resource_category: ???
    end

end

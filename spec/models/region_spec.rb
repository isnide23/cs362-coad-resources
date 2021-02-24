require 'rails_helper'

RSpec.describe Region, type: :model do
  
  it 'has a name' do
    region = Region.new
    expect(region).to respond_to(:name)
  end

  it 'has many tickets' do
    region = Region.new
    expect(region).to respond_to(:tickets)
  end

  it 'is expected to have a region of unspecified' do
    expect(Region.unspecified.name).to eq('Unspecified')
  end

  it 'to_s to returns a name' do
    name = 'exName'
    region = Region.new(name: name)
    expect(region.to_s).to eq(name)
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    #eleaborate on validation tests
    it { should validate_length_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end


end



require 'rails_helper'

RSpec.describe User, type: :model do

    it 'builds' do
        build(:user)
    end

end

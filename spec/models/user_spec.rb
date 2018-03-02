require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'Factory' do
        it 'is valid' do
            expect(FactoryBot.create(:user)).to be_valid
    end
  end
    describe 'Database' do

  end
end

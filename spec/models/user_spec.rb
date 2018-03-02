require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'Factory' do
        it 'is valid' do
            expect(FactoryBot.create(:user)).to be_valid
    end
  end
    describe 'Database table' do
        it {is_expected.to have_db_column :email}
        it {is_expected.to have_db_column :encrypted_password}
  end

    describe 'instance methods' do
        describe '#registerd?' do
            let(:non_registerd) {FactoryBot.create(:user, registerd: false)}
            let(:registerd) {FactoryBot.create(:user, registerd: true)}

        it 'return true if user is registerd' do
                expect(registerd.registerd?).to eq true
            end
        it 'return true if user is registerd' do
                expect(non_registerd.registerd?).to eq false
            end

        end
    end
end

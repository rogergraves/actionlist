require 'rails_helper'

RSpec.describe UserItem, type: :model do
  let!(:user) { FactoryBot.create(:user) }
  let!(:item) { FactoryBot.create(:item)} 
  let!(:user_item) { FactoryBot.create(:user_item, user: user, item: item) }

  it 'factory works' do
    expect(user_item).to be_valid
  end

  describe 'Relationships' do
    it 'users belong to the user_item' do
      expect(user_item.user).to eq(user)
    end

    it 'items belong to the user_item' do
      expect(user_item.item).to eq(item)
    end
    it 'users have many user_items' do
      expect(user.user_items).to include(user_item)
    end

    it 'items have_many user_items' do
      expect(item.user_items).to include(user_item)
    end
    it 'users have items through user_items' do
      expect(user.items).to include(item)
    end
    it 'items have users through user_items' do
      expect(item.users).to include(user)
    end
  end

end

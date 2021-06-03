require 'rails_helper'

RSpec.describe Item, type: :model do
  let!(:checklist) { FactoryBot.create(:checklist) }
  let!(:item1) { FactoryBot.create(:item, checklist: checklist, description: 'Item 1', order: 1) }
  let!(:item2) { FactoryBot.create(:item, checklist: checklist, description: 'Item 2', order: 2) }

  it 'factory works' do
    expect(item1).to be_valid
    expect(item2).to be_valid
  end

  it 'items belong to checklists' do
    expect(checklist.items).to include(item1, item2)
  end

  it 'an item has a checklist' do
    expect(item1.checklist).to eq(checklist)
  end

  it 'items cannot have the same description' do
    item1.description = item2.description
    expect(item1).to_not be_valid
  end

  it 'items can have the same description if they belong to another checklist' do
    another_item = FactoryBot.create(:item)
    expect(another_item.checklist).to_not eq(checklist)
    another_item.description = item1.description
    expect(another_item).to be_valid
  end
  
  it 'descriptions have to exist' do
    item1.description = ''
    expect(item1).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.create(:user) }

  it 'factory works' do
    expect(user).to be_valid
  end

  it 'slugs are automatically generated' do
    expect(user.slug).to_not be_nil
  end 

  it 'email address cannot be duplicated' do
    another_user = FactoryBot.create(:user)
    expect(another_user).to be_valid
    another_user.email = user.email
    expect(another_user).to_not be_valid
  end

  it 'email adress cannot be a scam' do
    user.email = "erjansndjansdja"
    expect(user).to_not be_valid
  end
end


require 'rails_helper'

RSpec.describe Checklist, type: :model do
  let!(:checklist) { FactoryBot.create(:checklist) }
  let!(:newchecklist) { FactoryBot.create(:checklist) }

  it 'factory works' do
    expect(checklist).to be_valid
  end

  it 'checklistName is unique' do
    new_checklist = FactoryBot.create(:checklist)
    expect(new_checklist).to be_valid
    new_checklist.name = checklist.name
    expect(new_checklist).to_not be_valid
  end

  it 'name exists' do
    expect(checklist).to be_valid
    checklist.name = nil
    expect(checklist).to_not be_valid
  end

  it 'email_when_finished cannot be blank' do
    checklist.email_when_finished = be_nil
    expect(checklist).to_not be_valid
  end

  it 'email_when_finished is a real email address' do
    checklist.email_when_finished = "nononononononononononono"
    expect(checklist).to_not be_valid
  end

  it 'uri cannot be blank' do
    checklist.uri = ""
    expect(checklist).to_not be_valid
    # ^^^^^^^^ I proved him wrong
  end

  it 'uri has to be unique' do
    expect(newchecklist).to be_valid
    newchecklist.uri = checklist.uri
    expect(newchecklist).to_not be_valid
  end
end

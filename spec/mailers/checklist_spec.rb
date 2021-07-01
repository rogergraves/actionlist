require "rails_helper"

RSpec.describe ChecklistMailer, type: :mailer do
  describe "checklist_done" do
    let(:mail) { ChecklistMailer.checklist_done }

    it "renders the headers" do
      expect(mail.subject).to eq("Checklist done")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end

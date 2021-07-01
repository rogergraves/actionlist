class ChecklistMailerPreview < ActionMailer::Preview
    def checklist_done
        ChecklistMailer.checklist_done(User.first, Checklist.first)
    end
end
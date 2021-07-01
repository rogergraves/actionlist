class ChecklistMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.checklist_mailer.checklist_done.subject
  #
  def checklist_done(user, checklist)
    mail({
        to: checklist.email_when_finished, 
        subject: "#{user.email} completed the #{checklist.name} checklist and won 50% off the next one!"
    }) 
  end
end

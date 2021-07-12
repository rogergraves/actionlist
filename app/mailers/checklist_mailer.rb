class ChecklistMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.checklist_mailer.checklist_done.subject
  #
  
  def checklist_done(user: @user, checklist: @checklist)
    # checklist.email_when_finished = "ryan.a.graves@icloud.com" if checklist.email_when_finished.nil?
    mail ({
        to: "ryan.a.graves@icloud.com", 
        subject: "ryan completed the yes checklist and won 50% off the next one!"
    }) 
  end
end


 
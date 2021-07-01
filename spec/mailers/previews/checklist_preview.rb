# Preview all emails at http://localhost:3000/rails/mailers/checklist
class ChecklistPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/checklist/checklist_done
  def checklist_done
    ChecklistMailer.checklist_done
  end

end

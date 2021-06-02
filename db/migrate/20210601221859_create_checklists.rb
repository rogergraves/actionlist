class CreateChecklists < ActiveRecord::Migration[6.1]
  def change
    create_table :checklists do |t|
      t.string :name
      t.string :call_to_action
      t.string :email_when_finished

      t.timestamps
    end
  end
end

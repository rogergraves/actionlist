class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :checklist, null: false, foreign_key: true
      t.string :description
      t.integer :order

      t.timestamps
    end
  end
end

class Item < ApplicationRecord
  belongs_to :checklist
  validates :description, uniqueness: { scope: :checklist_id }
  validates :description, allow_blank: false
end

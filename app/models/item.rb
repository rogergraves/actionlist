class Item < ApplicationRecord
  belongs_to :checklist

  validates :description, presence: true, allow_blank: false, uniqueness: { scope: :checklist_id }
end

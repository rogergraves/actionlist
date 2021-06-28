class Item < ApplicationRecord
  has_many :user_items
  has_many :users, through: :user_items
  belongs_to :checklist

  validates :description, presence: true, allow_blank: false, uniqueness: { scope: :checklist_id }
end

class Checklist < ApplicationRecord
    has_many :items
    validates :name, allow_nil: false, uniqueness: true, allow_blank: false
    validates :email_when_finished, presence: true, uniqueness: false, format: { with: URI::MailTo::EMAIL_REGEXP }
end

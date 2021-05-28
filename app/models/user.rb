class User < ApplicationRecord
    include Slugable
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end

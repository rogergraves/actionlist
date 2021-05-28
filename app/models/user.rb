class User < ApplicationRecord
    include Slugable
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    # validates :slug, presence: true, uniqueness: true
    # validate :slug_validation

    private

    def slug_validation
        if slug.match(/\W/)
            errors.add(:slug, "must be lowercase alphanumeric")
        end
    end
end

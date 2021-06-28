class User < ApplicationRecord
    has_many :user_items
    has_many :items, through: :user_items
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :slug, uniqueness: true, allow_nil: true
    after_create :add_slug

    private
      
    def add_slug
        return unless slug.nil?

        string_length = (ENV['SLUG_LENGTH'] || 10).to_i
        self.update(slug: SecureRandom.hex[0..string_length])
    end
end

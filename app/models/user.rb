class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    after_create :add_slug
      
        private
      
    def add_slug
        return unless slug.nil?

        string_length = (ENV['SLUG_LENGTH'] || 10).to_i
        self.update(slug: SecureRandom.hex[0..string_length])
        return unless respond_to?(slug)
        return if send(slug).present?
    end
end

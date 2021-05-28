module Slugable
    extend ActiveSupport::Concern
  
    included do
      before_save :generate_unique_slug
    end
  
    def generate_unique_slug
      generate_uniq_token_for(field: :slug)
    end
  
    def generate_unique_slug!
      generate_unique_slug
      save
    end
  
    def random_string(string_length)
      SecureRandom.hex[0..string_length]
    end
  
    def generate_uniq_token_for(field:)
      return unless respond_to?(field)
      return if send(field).present?
  
      string_length = (ENV['SLUG_LENGTH'] || 10).to_i
      query_string = random_string(string_length)
  
      while self.class.default_scoped.exists?(field.to_s.to_sym => query_string)
        string_length += 1
        query_string = random_string(string_length)
      end
  
      send("#{field}=", query_string)
    end
  
    module ClassMethods
      def lookup(slug)
        find_by(slug: slug)
      end
    end
  end
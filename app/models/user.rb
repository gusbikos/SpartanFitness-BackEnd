class User < ApplicationRecord
    has_many :scheduled_classes
    has_many :gym_classes, through: :scheduled_classes
    has_many :class_reviews 
    # has_many :gym_classes, through: :class_reviews
    has_many :cart_items
    has_many :items, through: :cart_items
    
    has_secure_password
    
    validates :name, :email, uniqueness: { case_sensitive: false }
    validates :name, :email, presence: true

    def self.find_or_create_from_google(payload)
        User.where(name: payload["name"]).first_or_create do |new_user|
            new_user.name = payload["name"]
            new_user.email = payload["email"]
            new_user.password = SecureRandom.base64(15)
        end
    end

end

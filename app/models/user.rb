class User < ApplicationRecord
    validates :name, presence: true, length: { in: 3..15}
    validates :password, presense: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8.32}\z/i }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    
    has_secure_password
    
    has_many :topics
end

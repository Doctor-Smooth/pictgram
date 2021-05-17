class User < ApplicationRecord
    validates :name, presence: true, length: { in: 3..15}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    
    validates :password, presence: true, length: { in: 8..32}, format: { with: /\A[a-zA-Z]+\z/}
    
    has_secure_password
    
    has_many :topics
end

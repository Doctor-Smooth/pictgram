class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true, length: { in: 3..15}
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
    validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }
    #半角8~32文字英大文字・小文字・数字それぞれ１文字以上含む
    #/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\z/
    #has_secure_password
    
    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: :favorites, source:'topic'
    
end

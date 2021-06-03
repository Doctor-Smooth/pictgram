class Favorite < ApplicationRecord
    belong_to :user
    belong_to :topic
    
    validates_uniqueness_of :topic_id, scope:user_id
end

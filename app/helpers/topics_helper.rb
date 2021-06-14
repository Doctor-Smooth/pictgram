module TopicsHelper
    def favorites_count(id)
        @favorites_count = Favorite.where(topic_id:id).count
    end
end

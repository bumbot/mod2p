class Post < ApplicationRecord
    belongs_to :user
    has_many :post_favorites, dependent: :destroy
    validates :title, presence: true
    validates :user_id, presence: true
    validates :content, presence: true

    def self.total_favorites
        total = 0
        self.all.each do |post|
            total += post.post_favorites.count
        end
        total
    end

    def self.most_favorited
        hash = {}
        self.all.each do |post|
            hash[post] = post.post_favorites.count
        end
        arr = hash.max_by{|k,v| v}
        arr[0]
    end

end

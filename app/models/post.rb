class Post < ApplicationRecord
    belongs_to :user
    has_many :post_favorites, dependent: :destroy
    validates :title, presence: true
    validates :user_id, presence: true
    validates :content, presence: true

end

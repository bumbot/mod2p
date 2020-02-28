class User < ApplicationRecord
    has_many :posts
    has_many :user_projects
    has_many :projects, through: :user_projects



    # has_many :project_favorites
    # has_many :projects, through: :project_favorites

    # has_many :post_favorites
    # has_many :posts, through: :post_favorites

    
end

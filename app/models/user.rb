class User < ApplicationRecord
    has_secure_password

    has_many :posts
    has_many :user_projects
    has_many :projects, through: :user_projects

    has_many :project_favorites
    # has_many :projects, through: :project_favorites

    has_many :post_favorites
    # has_many :posts, through: :post_favorites
    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :github_profile, presence: true
    validates :cohort_name, presence: true
    validates :cohort_start, presence: true

    def user_posts
        self.posts
    end

end

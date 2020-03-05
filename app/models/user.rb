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

    def most_favorited_post
        hash = {}
        self.posts.each do |post|
            hash[post.title] = post.post_favorites.count
        end
        arr = hash.max_by{|k,v| v}
        arr[0]
    end

    def most_favorited_project
        hash = {}
        self.projects.each do |proj|
            hash[proj.name] = proj.project_favorites.count
        end
        arr = hash.max_by{|k,v| v}
        arr[0]
    end

    def self.most_posts
        hash = {}
        User.all.each do |user|
            hash[user] = user.posts.count
        end
        arr = hash.max_by{|k,v| v}
        arr[0]
    end

    def self.most_projects
        hash = {}
        User.all.each do |user|
            hash[user] = user.projects.count
        end
        arr = hash.max_by{|k,v| v}
        arr[0]
    end

    def self.post_shame
        arr = []
        self.all.select do |user|
            user.posts.count <= 2
        end.each do |user|
            arr << user.name
        end
        arr.join(", ")
    end

    def self.project_shame
        arr = []
        self.all.select do |user|
            user.projects.count <= 2
        end.each do |user|
            arr << user.name
        end
        arr.join(", ")
    end

end

class Project < ApplicationRecord
    has_many :user_projects
    has_many :users, through: :user_projects
    has_many :project_favorites, dependent: :destroy
    validates :name, presence: true
    validates :github_url, presence: true
    validates :description, presence: true

    # has_many :project_favorites
    # has_many :users, through: :project_favorites

    def self.total_favorites
        total = 0
        self.all.each do |proj|
            total += proj.project_favorites.count
        end
        total
    end

    def self.most_favorited
        hash = {}
        self.all.each do |proj|
            hash[proj] = proj.project_favorites.count
        end
        arr = hash.max_by{|k,v| v}
        arr[0]
    end

end

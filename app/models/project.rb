class Project < ApplicationRecord
    has_many :user_projects
    has_many :users, through: :user_projects
    has_many :project_favorites, dependent: :destroy
    validates :name, presence: true
    validates :github_url, presence: true
    validates :description, presence: true

    # has_many :project_favorites
    # has_many :users, through: :project_favorites
end

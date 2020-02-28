class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        # @user = User.new(name: "Paul", github_profile: "https://github.com/bumbot", cohort_name: "Live Fast Pry Young", cohort_start: nil)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update

    end
end

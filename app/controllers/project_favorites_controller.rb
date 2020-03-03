class ProjectFavoritesController < ApplicationController

    def create
        @projectfavorite = ProjectFavorite.create(user_id: session[:user_id], project_id: params[:project_id])
        redirect_to projects_path
    end

end

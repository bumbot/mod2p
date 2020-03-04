class ProjectFavoritesController < ApplicationController

    def create
        @project = Project.find(params[:project_id])
        @projectfavorite = ProjectFavorite.find_or_create_by(user_id: session[:user_id], project_id: params[:project_id])
        redirect_to project_path(@project)
    end

    def destroy
        @project = Project.find(params[:project_id])
        @projectfavorite = ProjectFavorite.find_by(user_id: session[:user_id], project_id: params[:project_id])
        @projectfavorite.destroy
        redirect_to project_path(@project)
    end


end

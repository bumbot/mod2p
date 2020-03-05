class ProjectsController < ApplicationController

    before_action :check_collabortors, only: [:index]

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
        @project = Project.new
    end
    
    def create
        @project = Project.new(project_params)
        if @project.valid?
            @project.save
            redirect_to project_path(@project)
        else
            render :new
        end
    end

    def edit
        @project = Project.find(params[:id])
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
        if @project.valid?
            redirect_to project_path(@project)
        else
            render :edit   
        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy

        redirect_to projects_path
    end


    private

    def project_params
        params.require(:project).permit(:name, :github_url, :description) 
    end

    def check_collabortors
        Project.all.each do |project|
            if project.users.count == 0
                project.delete
            end
        end
    end



end

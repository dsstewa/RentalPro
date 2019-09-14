class ProjectsController < ApplicationController
    
    def new
        @project = Project.new
    end

    def create
        binding.pry
        @project = Project.new(project_params)
        @project.save
        redirect_to project_path @project
      
    end

    def show
        @project = Project.find_by_id(params[:id])
    end
    
    private 

    def project_params
       params.require(:project).permit(:name, :client_name, :address, :project_manager, :company_id)
    end


end

class ProjectsController < ApplicationController
    
    def new
        @project = Project.new
        @project.build_projectmanager
        
        
    end

    def create
        @project = Project.new(project_params)
        @project.save
        binding.pry
        redirect_to project_path @project
      
    end

    def show
        @project = Project.find_by_id(params[:id])
    end
    
    private 

    def project_params
       params.require(:project).permit(
           :name, 
           :client_name, 
           :address,
           :company_id,
           :company_id,
           projectmanager_attributes: [
               :user_id
           ]
           )
    end


end

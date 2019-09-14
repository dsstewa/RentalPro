class ProjectsController < ApplicationController
    
    def new
        @project = Project.new
        @project.build_projectmanager
        
        
    end

    def create
        @project = Project.new(project_params)
        @project.save
        redirect_to project_path @project
      
    end

    def show
        @projects = Project.where(company_id: current_user.company.id)
    end
     
    def index
        @projects = Project.where(company_id: current_user.company.id)
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

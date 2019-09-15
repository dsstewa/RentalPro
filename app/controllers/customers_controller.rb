class CustomersController < ApplicationController
    
    def new
        @customer = Customer.new
        @project.build_projectmanager
        
        
    end

    def create
        @project = Project.new(project_params)
        @project.save
        redirect_to project_path @project
      
    end

    def show
        @project = @project = Project.find_by_id(params[:id])
        binding.pry
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

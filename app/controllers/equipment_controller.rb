class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save
    redirect_to equipment_index_path
    
  end


  def index
    binding.pry
    @projects = Project.where(company_id: current_user.company_id)
  end


  private 
  def equipment_params
     params.require(:equipment).permit(:name, :rental_company, :rental_company, :make, :machine_type, :rental_rate_day, :project_id, :company_id)
  end
end


module ProjectsHelper
  def company_projects
    @company_projects = Project.where(company_id: current_user.company.id)
  end

end

module CompaniesHelper
def current_company
   Company.find(current_user.company.id)
end

end

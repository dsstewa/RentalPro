class Projectmanager < ApplicationRecord
    has_many :projects
    belongs_to :user
    
   def name
    User.find_by_id(user_id).name
   end

end

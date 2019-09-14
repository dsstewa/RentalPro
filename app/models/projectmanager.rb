class Projectmanager < ApplicationRecord
    has_maney :projects
    belongs_to :user
end

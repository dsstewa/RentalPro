class Company < ApplicationRecord
    has_many :assets
    has_many :users
    has_many :projects
end

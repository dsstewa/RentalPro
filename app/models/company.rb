class Company < ApplicationRecord
    has_many :equipment
    has_many :users
    has_many :projects
end

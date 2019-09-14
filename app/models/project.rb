class Project < ApplicationRecord
    belongs_to :company
    belongs_to :projectmanager
    has_many :users, through: :companies
    has_many :assets, through: :companies
end

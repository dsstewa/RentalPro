class ProjectsController < ApplicationController
    belongs_to :company
    has_many :users, through: :companies
    has_many :assets, through: :companies
end

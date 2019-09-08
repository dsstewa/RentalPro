class UsersController < ApplicationController
    belongs_to :company
    has_many :projects, through: :companies
end

class User < ApplicationRecord
    belongs_to :company
    has_many :projects, through: :companies

    has_secure_password
end

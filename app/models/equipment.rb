class Equipment < ApplicationRecord
    belongs_to :company
    belongs_to :project
end

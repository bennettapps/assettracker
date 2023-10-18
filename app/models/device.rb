class Device < ApplicationRecord
    belongs_to :employee, :optional => true
    belongs_to :category, :optional => false
end

class Device < ApplicationRecord
    belongs_to :employee, :optional => true
end

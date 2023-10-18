class Device < ApplicationRecord
    belongs_to :employee, :optional => true
    belongs_to :category, :optional => false
    belongs_to :manufacturer, :optional => false
end

class Device < ApplicationRecord
    belongs_to :assigned_to, class_name: 'Employee', optional: false
end

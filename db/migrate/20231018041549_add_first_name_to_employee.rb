class AddFirstNameToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :first_name, :string
  end
end

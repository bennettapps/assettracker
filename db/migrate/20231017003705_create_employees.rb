class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.timestamps
    end

    add_reference :devices, :assigned_to, foreign_key: { to_table: :employees }

  end
end

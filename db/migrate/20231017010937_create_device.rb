class CreateDevice < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.references :assigned_to, foreign_key: { to_table: :employees }
      t.timestamps
    end
  end
end

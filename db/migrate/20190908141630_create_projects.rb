class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string  :name
      t.string  :client_name
      t.string  :address
      t.belongs_to  :projectmanager, foreign_key: true
      t.belongs_to  :company, foreign_key: true
      t.timestamps
    end
  end
end

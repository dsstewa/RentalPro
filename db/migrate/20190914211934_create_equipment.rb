class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string  :name
      t.string  :rental_company
      t.string  :make
      t.string  :machine_type
      t.float   :rental_rate_day
      t.belongs_to  :company, foreign_key: true
      t.timestamps
    end
  end
end

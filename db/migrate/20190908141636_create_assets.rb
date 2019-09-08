class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string  :name
      t.boolean :osr, default: false
      t.string  :rental_company
      t.string  :make
      t.string  :type
      t.string  :eqclass
      t.float   :rental_rate_day
      t.float   :rental_rate_week
      t.float   :rental_rate_month
      t.float   :discount
      t.string  :address
      t.belongs_to  :company, foreign_key: true
      t.belongs_to  :project, foreign_key: true
      t.timestamps
    end
  end
end




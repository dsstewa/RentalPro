class CreateProjectmanagers < ActiveRecord::Migration[5.2]
  def change
    create_table :projectmanagers do |t|
      t.belongs_to :user
      
      t.timestamps
    end
  end
end

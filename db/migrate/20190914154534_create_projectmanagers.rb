class CreateProjectmanagers < ActiveRecord::Migration[5.2]
  def change
    create_table :projectmanagers do |t|

      t.timestamps
    end
  end
end

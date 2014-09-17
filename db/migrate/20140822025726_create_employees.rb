class CreateEmployees < ActiveRecord::Migration
  def up
    create_table :employees do |t|
      t.integer "eid"
      t.string "lastname", :limit => 50
      t.string "firstname", :limit => 50
      t.timestamps
    end
  end

  def down
    drop_table :employees
  end
end

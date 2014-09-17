class CreateTitles < ActiveRecord::Migration
  def up
    create_table :titles do |t|
      t.string "name", :limit => 250
      t.string "code", :limit => 5
      t.integer "group_id"
      t.timestamps
    end
  end

  def down
    drop_table :titles
  end
end

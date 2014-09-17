class CreateCertificates < ActiveRecord::Migration
  def up
    create_table :certificates do |t|
      t.string "name", :limit => 250
      t.string "code", :limit => 5
      t.integer "groupid"
      t.timestamps
    end
  end

  def down
    drop_table :certificates
  end
end

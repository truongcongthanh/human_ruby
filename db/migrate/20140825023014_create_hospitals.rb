class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string "name", :limit => 250
      t.string "code", :limit => 9
      t.string "address", :limit => 250
      t.string "tel"
      t.timestamps
    end
  end
end

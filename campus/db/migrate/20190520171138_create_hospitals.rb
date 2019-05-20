class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :location
      t.string :specialty

      t.timestamps
    end
  end
end

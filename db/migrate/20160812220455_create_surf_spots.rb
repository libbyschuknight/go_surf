class CreateSurfSpots < ActiveRecord::Migration
  def change
    create_table :surf_spots do |t|
      t.string  :name
      t.string  :description
      t.string  :place
      t.string  :region
      t.string  :country
      t.float   :latitude
      t.float   :longtitude
      t.integer :stoke_rating

      t.timestamps null: false
    end
  end
end

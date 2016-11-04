class AddLanLonToBoats < ActiveRecord::Migration[5.0]
  def change
  	add_column :boats, :latitude, :float
  	add_column :boats, :longitude, :float
  end
end

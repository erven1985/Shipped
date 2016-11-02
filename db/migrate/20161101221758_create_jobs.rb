class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :container
      t.float :price
      t.integer :boat_id
      t.timestamps
    end
  end
end

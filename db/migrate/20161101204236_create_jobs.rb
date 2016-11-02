class CreateJobs < ActiveRecord::Migration[5.0]
    def change
    create_table :jobs do |t|

    t.string :name
    t.string  :origin
    t.string :destination
    t.float :price
    t.text  :description
    t.integer :containers
    t.integer :boat_id


      t.timestamps
    end
  end
end
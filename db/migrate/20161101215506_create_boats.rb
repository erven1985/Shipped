class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
    t.integer :user_id
    t.string :name
    t.integer :container
    t.string :location
    t.integer :job_id
    


      t.timestamps
    end
  end
end

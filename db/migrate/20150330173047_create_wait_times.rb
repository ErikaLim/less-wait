class CreateWaitTimes < ActiveRecord::Migration
  def change
    create_table :wait_times do |t|
      t.integer :time
      t.integer :restaurant_id

      t.timestamps
    end
  end
end

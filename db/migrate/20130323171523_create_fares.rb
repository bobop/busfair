class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.decimal :amount, precision: 5, scale: 2
      t.string :start_bus_stop
      t.string :end_bus_stop
      t.string :operator
      t.string :route
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

class Log < ActiveRecord::Migration
  def change
        create_table :log do |t|
      t.integer :CWID
      t.datetime :timestamp
      t.string :class
      t.integer :count, default: 1
    end
  end
end

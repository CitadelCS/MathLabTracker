class Log < ActiveRecord::Migration
  def change
        create_table :log do |t|
      t.integer :CWID
      t.datetime :timestamp
      t.string :class
    end
  end
end

class Logs < ActiveRecord::Migration
  def change
            create_table :logs do |t|
      t.integer :CWID
      t.datetime :timestamp
      t.string :class
    end
  end
end

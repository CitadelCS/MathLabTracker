class Add < ActiveRecord::Migration
  def change
    create_table "log", force: :cascade do |t|
      t.integer "CWID"
      t.datetime "timestamp"
      t.string "class"
    end
  end
end

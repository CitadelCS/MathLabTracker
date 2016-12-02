class LogRemoveCount < ActiveRecord::Migration
  def change
  remove_column :log, :count
  end
end

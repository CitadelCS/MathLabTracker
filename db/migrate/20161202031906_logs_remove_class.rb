class LogsRemoveClass < ActiveRecord::Migration
  def change
    remove_column :logs, :class
  end
end

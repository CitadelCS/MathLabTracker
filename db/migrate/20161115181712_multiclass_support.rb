class MulticlassSupport < ActiveRecord::Migration
  def change
    add_column :classes, :string
  end
end

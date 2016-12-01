class MulticlassSupport < ActiveRecord::Migration
  def change
    add_column :students, :classes, :string
  end
end

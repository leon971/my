class AddPriorityToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :priority, :integer, default: 0
  end
end

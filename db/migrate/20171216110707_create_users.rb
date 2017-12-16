class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :username, :password, :block, :owner_id, :addres_id
  end
  def change
    
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :username, :password, :block, :owner_id, :addres_id
  end
  def change
    
<<<<<<< HEAD
=======
    end
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
  end
end

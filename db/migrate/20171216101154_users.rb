class Users < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password
<<<<<<< HEAD
  		t.integer :block
  		t.integer :owner_id
  		t.integer :addres_id
=======
  		t.int :block
  		t.int :owner_id
  		t.int :addres_id
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
  	end
  	say 'wddawwad1'
  	create_table :wallets do |t|
      t.string :name
<<<<<<< HEAD
      t.integer :user_id
      t.integer :blcok
  	end
  	create_table :banks do |t|
      t.integer :amount
      t.string :name
      t.integer :block
  	end
  	create_table :transactions do |t|
      t.integer :f_bank_id
      t.integer :s_bank_id
      t.integer :f_wallet_id
      t.integer :s_wallet_id
      t.integer :amount
      t.date :date
      t.integer :confirm
=======
      t.int :user_id
      t.int :blcok
  	end
  	create_table :banks do |t|
      t.int :amount
      t.string :name
      t.block :block
  	end
  	create_table :transactions do |t|
      t.int :f_bank_id
      t.int :s_bank_id
      t.int :f_wallet_id
      t.int :s_wallet_id
      t.int :amount
      t.date :date
      t.int :confirm
>>>>>>> d2f0a26a2b84bdc9081777c0d9b3a223ae62bfc7
      t.text :description
  	end
  	create_table :addresses do |t|
      t.string :email
  	end
  end
end

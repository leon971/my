class Users < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password
  		t.integer :block
  		t.integer :owner_id
  		t.integer :addres_id
  	end
  	say 'wddawwad1'
  	create_table :wallets do |t|
      t.string :name
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
      t.text :description
  	end
  	create_table :addresses do |t|
      t.string :email
  	end
  end
end

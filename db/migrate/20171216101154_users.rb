class Users < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password
  		t.int :block
  		t.int :owner_id
  		t.int :addres_id
  	end
  	say 'wddawwad'
  	create_table :wallets do |t|
      t.string :name
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
      t.text :description
  	end
  	create_table :addresses do |t|
      t.string :email
  	end
  end
end

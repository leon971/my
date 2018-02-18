class AddOrderTables < ActiveRecord::Migration[5.1]
  def change
  	create_table :orders do |t|
  	  t.string :comment
  	  t.string :name
  	  t.integer :order_number
  	  t.integer :owner_id
      t.integer :user_id
  	  t.integer :status_id
  	  t.date :date
  	  t.integer :blocked
      t.integer :step
      t.integer :price
      t.string :currency
  	end
  	say 'orders Table created'
  	create_table :statuses do |t|
      t.string :name
      t.text :text
      t.text :comment
  	end
  	say 'statuses Table created'
  	say 'links table will be created in a while, check it after creation V.I. table'
  	create_table :links do |t|
      t.string :link
      t.integer :order_id
      t.text :comment
      t.integer :price
      t.string :currency
      t.integer :accept
  	end
  	say 'links table created check it Very Important'
  	create_table :order_actions do |t|
      t.integer :order_id
      t.text  :action_text
      t.string :data_1
      t.string :data_2
      t.string :data_3
  	end
  	say 'order_actions table created'
  	create_table :taxes do |t|
      t.string :name
      t.integer :value
      t.string :currency
      t.integer :order_id
      t.integer :pernament
  	end
  	say 'taxes table created'
  	say 'Orders Tables created'
  end
end

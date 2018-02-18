class AddUsertypeToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :usertype, :string, default: 'simple'
  	say 'usertype added to users table ;)'
  end
end

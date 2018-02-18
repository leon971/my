class Order < ApplicationRecord
	has_one :user
	has_one :owner, class_name: 'User'
	has_one :status
	has_many :links
	has_many :order_actions, class_nem: 'OrderActions'

end

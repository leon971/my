class User < ApplicationRecord
  has_one :address
  attr_accessor
  validates_presence_of :username, :password
  before_save :check_attr
  validates_uniqueness_of :username, message: "Username has already been taken"

  def check_attr
    self.block = 0;
  end
end

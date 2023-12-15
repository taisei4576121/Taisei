class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         
  has_many :tweets
end
class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean , default: false
  end
end
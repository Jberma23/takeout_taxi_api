class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :recoverable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
  
  enum role: [:customer, :owner]
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackables
  has_many :trucks
  has_many :ratings
  has_many :orders
  has_many :reviews
  has_many :favorites
  has_many :locations
  



  def self.username(id)
    @user = where(id: id).username
  end

  def self.valid_login?(email, password)
    user = where(email: email).first
    [user&.valid_password?(password), user]
  end
     







  
end

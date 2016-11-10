class User < ActiveRecord::Base
  has_many :trucks, foreign_key: :owner_id
  has_many :reviews, foreign_key: :patron_id
  
  include BCrypt

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password
  
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(args)
    @user = User.find_by(email: args[:email])

    @user && @user.password == args[:password] ? @user : nil
  end

end
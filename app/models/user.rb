class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable :recoverable,
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :product_ids
  # attr_accessible :title, :body

  attr_accessor :invite_code
  attr_accessible :invite_code

  validates_each :invite_code, :on => :create do |record, attr, value|
    record.errors.add attr, "Please enter correct invite code" unless
        value && value == "12345"
  end

  has_and_belongs_to_many :products
end

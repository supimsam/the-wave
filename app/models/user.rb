class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_and_belongs_to_many :groups
	has_many :followings
	has_many :subscriptions, through: :followings, source: :group
	has_many :posts, dependent: :destroy
	
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_and_belongs_to_many :groups
	has_many :followings
	has_many :subscriptions, through: :followings, source: :group
	has_many :posts, dependent: :destroy
  	has_attached_file :avatar, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" } 
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

class Group < ActiveRecord::Base

	# a_user.groups << some_group
	has_and_belongs_to_many :users, dependent: :destroy
	has_many :followings
	has_many :subscribers, through: :followings, source: :user
end

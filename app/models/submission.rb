class Submission < ActiveRecord::Base
	has_many :comments
	belongs_to :user

	acts_as_votable


	
end

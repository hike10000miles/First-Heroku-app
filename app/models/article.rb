class Article < ActiveRecord::Base

	has_many :comments, dependent: :destroy
  	validates :text, length: {minimum: 5},
  					 presence: true
	validates :title, presence: true,
					  length: {in: 5..50}
					  
end

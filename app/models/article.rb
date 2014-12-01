class Article < ActiveRecord::Base
	validates :title, presence: true
	validates :author, presence: true
	validates :post, presence: true
	validates :title, uniqueness: true	
end

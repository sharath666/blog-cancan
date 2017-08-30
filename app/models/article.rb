class Article < ActiveRecord::Base
	belongs_to :user
	has_many :article_categories

	has_many :categories, through: :article_categories
	validates_presence_of :title, :body,:user_id, :published_date

	#validate :limit
	
	private
	def check_published_date
		if self.published_date < Date.today
			self.errors.add(:published_date, "cannot be less than today")
	end
end
	def limit
		if  (self.user.role? "author") && (self.user.articles.length >= 3)
		self.errors.add(:user_id, "cannot create 4")
	end
end
end


	#def category_check
	#	if self.categories.length > 1
	#	self.errors.add(:category, "cannot create")
	#	end
	#end

	#def category_check
	#	if self.article_categories.category.length >=3
	#		self.errors.add(:category, "cannot create")
	#	end







	#def limit
	#	 count = Article.where('user_id = ?', self.user_id).length

	#	 if count > 3
	#			self.errors.add(:user_id, "cannot create 4")
	#	 end
	#	end


	
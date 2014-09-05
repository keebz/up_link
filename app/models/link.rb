class Link <ActiveRecord::Base
	validates :title, :presence => true
	validates :hyperlink, :presence => true

	has_many :votes

	def self.rate
		all.sort_by{|link| link.votes.count}.reverse
	end

end
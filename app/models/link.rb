class Link <ActiveRecord::Base
	validates :title, :presence => true
	validates :hyperlink, :presence => true

	has_many :votes
	has_many :comments

	def self.top
		all.sort_by{|link| link.created}.reverse.first(5).sort_by{|link| link.votes.count}.reverse
	end

end
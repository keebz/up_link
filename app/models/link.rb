class Link <ActiveRecord::Base
	validates :title, :presence => true
	validates :hyperlink, :presence => true

end
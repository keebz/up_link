require 'rails_helper'

describe Link do
	it { should validate_presence_of :title}
	it { should validate_presence_of :hyperlink}
	it { should have_many :votes}
	it { should have_many :comments}
end

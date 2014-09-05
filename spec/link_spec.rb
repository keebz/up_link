require 'rails_helper'

describe Link do
	it { should validate_presence_of :title}
	it { should validate_presence_of :hyperlink}
end

class LinksController < ApplicationController
before_filter :authorize, only: [:new,:create, :destroy]

def index
	@links = Link.all
end

def new
	@link = Link.new
end

def create
	@link = Link.new(link_params)
	@link.created = DateTime.now
	if @link.save
		if !@link.hyperlink.include?('http://') && !@link.hyperlink.include?('www.')
			@link.hyperlink = "http://www." + @link.hyperlink
			@link.save
		elsif !@link.hyperlink.include?('http://') && @link.hyperlink.include?('www.')
			@link.hyperlink = "http://" + @link.hyperlink
			@link.save
		end	

		flash[:notice] = "Link Added"
		redirect_to "/"
	else
		render 'new'
	end
			
end

def edit
end

def update
end

def show
end

def destroy
	@link = Link.find(params[:id])
	@link.destroy
	redirect_to '/'
end

private
def link_params
	params.require(:link).permit(:title, :hyperlink, :description, :created)
end

end
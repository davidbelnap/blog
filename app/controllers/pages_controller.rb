class PagesController < ApplicationController
  def index
  	# local var is only available in the method
  	# if we want our view to have access to the var
  	# we need an instance variable
  	@pages = Page.all
  # ^render :index
  # responsible for 
  end

  def show
  	@page = Page.find(params[:id])
  	# render :show - app/views/pages/show.html.erb
  	# responsible for showing a specific page
  end

  def edit
  	# responsible for showing a form to edit an existing page
  	@page = Page.find(params[:id])
  end

  def update
  	@page = Page.find(params[:id])
  	if @page.update(page_params)
  		# success
  		# url: /pages/10
  		redirect_to page_path(@page)
  	else
  		# fail
  		render :edit
  	end
  end

  def new
  	@page = Page.new
  	# render :new
  	# responsible for showing a form to create a new page
  end

  	# responsible for saving a new record in our database
  def create
  	# strong params
  	@page = Page.new(page_params)
  	# executes the sql to try to save the new page in the database
  	if page.save
  		# success - new record in the database
  		redirect_to page_path(page)
  	else
  		# fail - failed to execute the sql for some reason
  		render :new
  	end
  end

  def destroy
  	Page.find(params[:id])
  	page.destroy
  	redirect_to pages_path
  end

  private
  	def page_params
  		params.require(:page).permit(:title, :author, :body, :private)
  	end
end
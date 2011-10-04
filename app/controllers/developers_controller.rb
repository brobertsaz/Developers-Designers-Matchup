class DevelopersController < ApplicationController

   def index
     @developers = Developer.all
   end
   
   def new
     @developer = Developer.new
   end
   
  def show
    @developer = Developer.find(params[:id])
  end   
   
   def create
    @developer = Developer.new(params[:developer])

    respond_to do |format|
      if @developer.save
        format.html { redirect_to @developer, notice: 'Developer Listing was successfully created.' }
        format.json { render json: @developer, status: :created, location: @developer }
      else
        format.html { render action: "new" }
        format.json { render json: @developer.errors, status: :unprocessable_entity }
      end
    end
  end
end
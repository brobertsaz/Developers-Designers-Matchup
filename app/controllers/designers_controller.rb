class DesignersController < ApplicationController
  
   def index
     @designers = Designer.all
   end

   def new
     @designer = Designer.new
   end
   
   def show
     @designer = Designer.find(params[:id])
   end
   
   def create
     @designer = Designer.new(params[:designer])

      respond_to do |format|
        if @designer.save
          format.html { redirect_to @designer, notice: 'Designer Listing was successfully created.' }
          format.json { render json: @designer, status: :created, location: @designer }
        else
          format.html { render action: "new" }
          format.json { render json: @designer.errors, status: :unprocessable_entity }
        end
      end
    end
end

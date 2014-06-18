class GalleriesController < ApplicationController
	def index
	    @galleries = Gallery.all
	end

	def show
	    @gallery = Gallery.find(params[:id])
	end

	def new
	    @gallery = Gallery.new
	end

	def create
        #gallery = Gallery.create(gallery_params)
        @gallery = Gallery.new(gallery_params)
          if @gallery.save
             redirect_to @gallery
             #If saving failed. Show the form again. 
          else
             #@gallery = Gallery.new
             #need to show to view
             render :new
          end
  end

  def edit
    	@gallery = Gallery.find(params[:id])
  end

  def update
    	@gallery = Gallery.find(params[:id])  
    	
    	if @gallery.update(gallery_params)
        redirect_to @gallery
      else
        render :edit
      end
  end

  def destroy
    	gallery = Gallery.find(params[:id])
    	gallery.destroy

    	redirect_to "/"
  end

  private 

  def gallery_params
    	params.require(:gallery).permit(
    		:name,
    		:description,
    	)
  end
end

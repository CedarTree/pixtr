class Gallery < ActiveRecord::Base
	has_many :images

	validates :name, presence: true
	validates :description, presence: true

end

# gallery = Gallery.new
#
# make changes to the databse below. not new. 
# gallery.save
# Gallery.create
# gallery.update
# gallery.destroy
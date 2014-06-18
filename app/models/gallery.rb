class Gallery < ActiveRecord::Base
	has_many :images

	validates :name, presence: true
	validates :description, presence: true

end

# gallery = Gallery.new
# gallery.save
# Gallery.create
# gallery.update
# gallery.destroy
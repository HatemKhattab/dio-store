class Image < ActiveRecord::Base
	belongs_to :product

	has_attached_file :picture, styles: {thumb: "100x100"}
	  #url: "/images/:id/:style/:filename",
	  #path: ":rails_root/public/images/:id/:style/:filename"
  
  validates :picture,
     attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
     attachment_size: { less_than: 5.megabytes }
end

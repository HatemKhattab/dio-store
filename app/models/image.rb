class Image < ActiveRecord::Base
	belongs_to :product

	has_attached_file :picture, styles: {thumb: "100x100"},
	  url: "/images/:style/:filename",
	  path: ":rails_root/public/images/:id/:style/:filename"

	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
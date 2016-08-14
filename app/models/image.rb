class Image < ActiveRecord::Base
	belongs_to :product

	has_attached_file :picture, styles: {medium: "300x300", thumb: "100x100"},
	default_url: "/images/:style"

	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end

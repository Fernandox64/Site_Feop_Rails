class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250>" }, :default_url => "/assets/images/feop_logo.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
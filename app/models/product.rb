class Product < ActiveRecord::Base
	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/images/feop_logo.jpeg"
	validates_attachment_content_type :cover, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

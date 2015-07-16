class Gallery < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250>" }, :default_url => "/assets/images/feop_logo.jpg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

class Edital < ActiveRecord::Base
  has_attached_file :pdf
  #has_attached_file :pdf, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/images/feop_logo.jpeg"
  #validates_attachment_content_type :pdf , :content_type => /\Aimage\/.*\Z/
  #validates_attachment :pdf, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
  #validates_attachment_content_type :pdf, :content_type => ['image/jpeg', 'image/png', 'application/pdf']
  #has_attached_file :pdf, :url => "/:class/:attachment/:id/:basename.:extension", :path => ":rails_root/public/:class/:attachment/:id/:basename.:extension"
  #has_attached_file :presentation, :url => "/:class/:attachment/:id/:basename.:extension", :path => ":rails_root/public/:class/:attachment/:id/:basename.:extension" #has to seperate has_attached_file to avoid error befor processing
  #validates_attachment :pdf,  :content_type => { :content_type => "application/pdf" }, :size => { :in => 0..12.megabytes }
  #before_post_process :pdf
  #has_attached_file :pdf
  #validates_attachment_content_type :pdf, :content_type => 'text/plain'
  #validates_attachment_content_type :pdf, :content_type => "application/pdf"


  #validates_attachment_presence :pdf
  #validates_attachment_size :pdf, :less_than => 12.megabytes
  #validates_attachment_content_type :pdf, :content_type => "application/pdf"	
  validates_attachment :pdf, presence: true,
       content_type: {content_type: ['text/plain',
        "application/pdf",               
                                      "application/vnd.ms-excel",
                                      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                                      "application/msword",
                                      "application/vnd.openxmlformats-officedocument.wordprocessingml.document"]},
                       size: {less_than: 2.megabytes}

end

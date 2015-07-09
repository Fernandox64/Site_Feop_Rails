class AddAttachmentPdfToEditals < ActiveRecord::Migration
  def self.up
    change_table :editals do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :editals, :pdf
  end
end

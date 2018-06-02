class AddAttachmentImageToMusics < ActiveRecord::Migration[5.0]
  def self.up
    change_table :musics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :musics, :image
  end
end

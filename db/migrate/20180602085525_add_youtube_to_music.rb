class AddYoutubeToMusic < ActiveRecord::Migration[5.0]
  def change
    add_column :musics, :youtube, :text
  end
end

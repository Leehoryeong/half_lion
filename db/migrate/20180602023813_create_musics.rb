class CreateMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.text :content
      t.string :theme

      t.timestamps
    end
  end
end

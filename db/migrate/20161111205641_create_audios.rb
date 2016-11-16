class CreateAudios < ActiveRecord::Migration[5.0]
  def change
    create_table :audios do |t|
      t.string :name
      t.string :genre
      t.string :path
      t.string :artist
      

      t.timestamps
    end
  end
end

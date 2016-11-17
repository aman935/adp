class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :song
      t.string :path
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :playlists, [:user_id, :created_at]
  end
end

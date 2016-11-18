class CreateEditors < ActiveRecord::Migration[5.0]
  def change
    create_table :editors do |t|
      t.string :song
      t.string :path

      t.timestamps
    end
  end
end

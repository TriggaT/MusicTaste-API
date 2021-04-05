class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.belongs_to :user, foreign_key: true 

      t.timestamps
    end
  end
end

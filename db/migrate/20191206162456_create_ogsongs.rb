class CreateOgsongs < ActiveRecord::Migration[5.2]
  def change
    create_table :og_songs do |t|
      t.string :og_artist
      t.string :title
      t.integer :og_year
    end
  end
end

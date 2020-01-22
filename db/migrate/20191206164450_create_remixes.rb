class CreateRemixes < ActiveRecord::Migration[5.2]
  def change
    create_table :remixes do |t|
      t.string :title
      t.string :ogsong_id
      t.string :artist_id
    end
  end
end

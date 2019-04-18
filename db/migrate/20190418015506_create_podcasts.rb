class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :genre
      t.boolean :explicit_content

      t.timestamps
    end
  end
end

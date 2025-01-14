class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_path
      t.string :backdrop_path
      t.date :release_date
      t.float :popularity
      t.string :original_language
      t.text :genre_ids
      t.integer :vote_count

      t.timestamps
    end
  end
end

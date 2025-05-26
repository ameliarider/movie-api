class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :release_data

      t.timestamps
    end
    drop_table ("movie_table_for_movie_data")
  end
end

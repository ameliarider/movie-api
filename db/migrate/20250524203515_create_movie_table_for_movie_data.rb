class CreateMovieTableForMovieData < ActiveRecord::Migration[7.2]
  def change
    create_table :movie_table_for_movie_data do |t|
      t.string :name
      t.string :description
      t.string :release_date

      t.timestamps
    end
  end
end

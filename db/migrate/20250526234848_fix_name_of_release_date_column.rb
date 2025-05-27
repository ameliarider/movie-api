class FixNameOfReleaseDateColumn < ActiveRecord::Migration[7.2]
  def change
    rename_column :movies, :release_data, :release_date
  end
end

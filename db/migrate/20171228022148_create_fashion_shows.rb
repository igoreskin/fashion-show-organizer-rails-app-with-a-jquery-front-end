class CreateFashionShows < ActiveRecord::Migration[5.1]
  def change
    create_table :fashion_shows do |t|
      t.string :title
      t.string :location
      t.string :venue

      t.timestamps
    end
  end
end

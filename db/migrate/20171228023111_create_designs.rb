class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :name
      t.string :style
      t.string :fashion
      t.integer :designer_id
      t.integer :fashion_show_id 

      t.timestamps
    end
  end
end

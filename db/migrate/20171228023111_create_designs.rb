class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :name
      t.string :style
      t.string :fashion

      t.timestamps
    end
  end
end

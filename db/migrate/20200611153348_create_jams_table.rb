class CreateJamsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :jams do |t|
      t.integer :artist_id
      t.integer :instrument_id 
      t.integer :length 
      t.timestamps 
    end
  end
end

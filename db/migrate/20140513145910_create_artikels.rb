class CreateArtikels < ActiveRecord::Migration
  def change
    create_table :artikels do |t|
      t.string :title
      t.string :ar_type
      t.text :ar_con

      t.timestamps
    end
  end
end

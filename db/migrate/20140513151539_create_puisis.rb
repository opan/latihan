class CreatePuisis < ActiveRecord::Migration
  def change
    create_table :puisis do |t|
      t.string :title
      t.string :puisi_type
      t.text :puisi_tema
      t.string :puisi_for
      t.text :puisi_con

      t.timestamps
    end
  end
end

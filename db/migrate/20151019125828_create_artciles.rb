class CreateArtciles < ActiveRecord::Migration
  def change
    create_table :artciles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end

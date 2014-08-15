class CreateWasteItems < ActiveRecord::Migration
  def change
    create_table :waste_items do |t|
      t.string :content

      t.timestamps
    end
  end
end

class CreateCupcakes < ActiveRecord::Migration[7.0]
  def change
    create_table :cupcakes do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :photo_url
      t.string :flavor

      t.timestamps
    end
  end
end

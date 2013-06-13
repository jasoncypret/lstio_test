class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item
      t.references :itemz, :polymorphic => true
      t.timestamps
    end
  end
end

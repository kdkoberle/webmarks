class CreateWebmarks < ActiveRecord::Migration
  def change
    create_table :webmarks do |t|
      t.string :url
      t.string :name
      t.string :date_saved

      t.timestamps
    end
  end
end

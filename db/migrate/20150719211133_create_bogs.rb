class CreateBogs < ActiveRecord::Migration
  def change
    create_table :bogs do |t|
      t.string :name
      t.string :size

      t.timestamps null: false
    end
  end
end

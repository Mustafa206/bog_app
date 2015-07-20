class RenameBog < ActiveRecord::Migration
  def change
    rename_table :bogs, :creatures
  end
end

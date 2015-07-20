class RenameSizeToDescrip < ActiveRecord::Migration
  def change
      rename_column :creatures, :size, :description
  end
end

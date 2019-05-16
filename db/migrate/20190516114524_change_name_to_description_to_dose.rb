class ChangeNameToDescriptionToDose < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :name, :description

  end
end

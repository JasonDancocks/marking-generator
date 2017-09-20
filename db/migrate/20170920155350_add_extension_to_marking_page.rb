class AddExtensionToMarkingPage < ActiveRecord::Migration[5.1]
  def change
    add_column :marking_pages, :extension, :boolean
  end
end

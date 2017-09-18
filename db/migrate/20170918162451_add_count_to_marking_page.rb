class AddCountToMarkingPage < ActiveRecord::Migration[5.1]
  def change
    add_column :marking_pages, :count, :integer
  end
end

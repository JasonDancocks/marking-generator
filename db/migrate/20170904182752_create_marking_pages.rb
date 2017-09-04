class CreateMarkingPages < ActiveRecord::Migration[5.1]
  def change
    create_table :marking_pages do |t|
      t.timestamps
    end
  end
end

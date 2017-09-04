class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
    	t.string  :name
    	t.belongs_to :marking_page, index: true
      t.timestamps
    end
  end
end

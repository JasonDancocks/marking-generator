class CreateBubbleStatements < ActiveRecord::Migration[5.1]
  def change
    create_table :bubble_statements do |t|
    	t.string :text
    	t.belongs_to :topic, index: true
      t.timestamps
    end
  end
end

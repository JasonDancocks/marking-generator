class CreatePStatements < ActiveRecord::Migration[5.1]
  def change
    create_table :p_statements do |t|
    	t.belongs_to :marking_page
      t.string :branch
      t.text :statement
      t.text :i_statement

      t.timestamps
    end
  end
end

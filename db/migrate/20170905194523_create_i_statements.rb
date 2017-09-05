class CreateIStatements < ActiveRecord::Migration[5.1]
  def change
    create_table :i_statements do |t|
      t.text :statement
      t.belongs_to :p_statement, index: true
 			t.belongs_to :marking_page, index: true
      t.timestamps
    end
  end
end

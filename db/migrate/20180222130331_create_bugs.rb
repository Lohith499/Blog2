class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :articles
      t.text :issue_type
      t.text :priority
      t.text :status

      t.timestamps
    end
  end
end

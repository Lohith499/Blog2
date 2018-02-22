class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :articles
      t.text :issue_type, default: 2
      t.text :priority, default: 1
      t.text :status, default: 0

      t.timestamps
    end
  end
end

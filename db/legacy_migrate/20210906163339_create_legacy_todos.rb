class CreateLegacyTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :legacy_todos do |t|
      t.string :name
      t.string :detail
      t.boolean :is_done

      t.timestamps
    end
  end
end

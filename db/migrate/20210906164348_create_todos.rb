class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :detail
      t.boolean :is_done

      t.timestamps
    end
  end
end

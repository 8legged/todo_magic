class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :what
      t.datetime :completed_at

      t.timestamps
    end
  end
end

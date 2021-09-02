class CreateActivites < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :actionable, polymorphic: true, null: false
      t.string :key

      t.timestamps
    end
  end
end

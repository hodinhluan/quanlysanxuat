class CreateMistakes < ActiveRecord::Migration[5.2]
  def change
    create_table :mistakes do |t|
      t.string :mistake_title
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end

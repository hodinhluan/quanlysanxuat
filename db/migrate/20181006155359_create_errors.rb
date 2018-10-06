class CreateErrors < ActiveRecord::Migration[5.2]
  def change
    create_table :errors do |t|
      t.string :error_title
      t.text :error_detail

      t.timestamps
    end
  end
end

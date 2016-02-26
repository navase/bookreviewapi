class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :description
      t.integer :rating, default: 0
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

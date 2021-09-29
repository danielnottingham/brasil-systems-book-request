class CreateOrderBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :order_books do |t|
      t.string :bond_type
      t.string :title
      t.string :author
      t.integer :edition
      t.integer :issn
      t.date :year_publication
      t.string :publishing_company

      t.timestamps
    end
  end
end

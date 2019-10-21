class CreateAdviceCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :advice_categories do |t|
      t.integer :advice_id
      t.integer :category_id

      t.timestamps
    end
  end
end

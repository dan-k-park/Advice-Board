class AddContentToAdvices < ActiveRecord::Migration[6.0]
  def change
    add_column :advices, :content, :string
  end
end

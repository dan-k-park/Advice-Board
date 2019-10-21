class RemoveTitleFromAdvices < ActiveRecord::Migration[6.0]
  def change

    remove_column :advices, :title, :string
  end
end

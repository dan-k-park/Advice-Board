class RemoveContentFromAdvices < ActiveRecord::Migration[6.0]
  def change

    remove_column :advices, :content, :text
  end
end

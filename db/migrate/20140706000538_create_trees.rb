class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :tree_name
    end
  end
end

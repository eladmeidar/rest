class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.column :name, :string
      t.column :data, :string
      t.timestamps
    end
  end
end

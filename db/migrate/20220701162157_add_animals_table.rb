class AddAnimalsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :species, :string
      t.column :breed, :string
      t.column :age, :integer
      t.column :name, :string
      t.column :gender, :string
    end
  end
end

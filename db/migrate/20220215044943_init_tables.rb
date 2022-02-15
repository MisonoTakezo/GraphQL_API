class InitTables < ActiveRecord::Migration[6.0]
  def change
    create_table(:users) do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    add_index :users, :email, unique: true

    create_table(:labels) do |t|
      t.string :name

      t.timestamps
    end

    create_table(:posts) do |t|
      t.references :user
      t.references :label
      t.string :title
    end
  end
end

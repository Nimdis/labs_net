class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :short_body
      t.string :body

      t.timestamps
    end
  end
end

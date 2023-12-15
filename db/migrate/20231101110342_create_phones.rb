class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :body
      t.text :text

      t.timestamps
    end
  end
end

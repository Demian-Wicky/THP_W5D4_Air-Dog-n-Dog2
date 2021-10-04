class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.boolean :is_a_good_dog

      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end

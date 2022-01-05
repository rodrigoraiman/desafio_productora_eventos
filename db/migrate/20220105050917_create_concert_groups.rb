class CreateConcertGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :concert_groups do |t|
      t.references :concert, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end

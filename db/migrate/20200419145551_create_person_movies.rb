class CreatePersonMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :person_movies do |t|
      t.references :person, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.integer :role, { null: false }
      
      t.timestamps
    end
  end
end

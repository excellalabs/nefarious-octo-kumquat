class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :slug
      t.string :blurb
      t.string :answer

      t.timestamps
    end
  end
end

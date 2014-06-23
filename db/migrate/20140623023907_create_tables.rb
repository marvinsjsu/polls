class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false

      t.timestamps
    end

    create_table :polls do |t|
      t.string :title, null: false
      t.integer :author, null: false

      t.timestamps
    end

    create_table :questions do |t|
      t.text :questions

      t.timestamps
    end

    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.text :answer_choice, null: false

      t.timestamps
    end

    create_table :responses do |t|
      t.integer :user_id, null: false
      t.integer :question_id, null: false
      t.integer :answer_choice_id, null: false

      t.timestamps
    end

    add_index :users, :user_name, unique: true
    add_index :polls, :author
    add_index :answer_choices, :question_id
    add_index :responses, :user_id
    add_index :responses, :question_id
    add_index :responses, :answer_choice_id
  end
end

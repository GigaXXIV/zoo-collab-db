class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.boolean :subcribed
      t.array :topics

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :legal_entity
      t.uuid :auth_token

      t.timestamps
    end
  end
end

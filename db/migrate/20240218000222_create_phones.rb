class CreatePhones < ActiveRecord::Migration[7.1]
  def change
    create_table :phones, id: :uuid do |t|
      t.string :number
      t.integer :kind
      t.references :phoneble, polymorphic: true, null: false, type: :uuid

      t.timestamps
    end
  end
end

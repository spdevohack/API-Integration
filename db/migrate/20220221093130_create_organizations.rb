class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :address
      t.string :tax_payer_number
      t.references :account,  foreign_key: true

      t.timestamps
    end

    add_reference :contacts, :organization
  end
end

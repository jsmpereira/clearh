class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :country
      t.string :email
      t.string :phone_number
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end

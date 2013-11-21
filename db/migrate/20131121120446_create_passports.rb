class CreatePassports < ActiveRecord::Migration
  def self.up
    create_table :passports do |t|
    	t.references :person
      t.binary :pdf
      t.timestamps
    end
  end

  def self.down
    drop_table :passports
  end
end

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :name
    	t.string :email
    	t.string :password
    	t.string :url

    	t.index :email, unique: true
      t.timestamps
    end
  end
end

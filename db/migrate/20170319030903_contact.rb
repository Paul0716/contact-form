class Contact < ActiveRecord::Migration[5.0]
  def self.up
      change_table :contacts do |t|
         t.column :title, :string, :limit => 60, :null => false
         t.column :name, :string, :null => false
         t.column :email, :string, :null => false
         t.column :phone, :string, :limit => 16, :null => false
         t.column :message, :string
      end
   end

   def self.down
      remove_column :contacts, :title
      remove_column :contacts, :name
      remove_column :contacts, :email
      remove_column :contacts, :phone
      remove_column :contacts, :message
   end

end

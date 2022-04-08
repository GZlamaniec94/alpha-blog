class Dropcategores < ActiveRecord::Migration[6.1]
  def change 
      drop_table :categores 
  end
end

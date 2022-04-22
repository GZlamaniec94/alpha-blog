class CreateCategores < ActiveRecord::Migration[6.1]
  def change
    create_table :categores do |t|

      t.timestamps
    end
  end
end

class CreateMemHons < ActiveRecord::Migration[6.0]
  def change
    create_table :mem_hons do |t|

      t.timestamps
    end
  end
end

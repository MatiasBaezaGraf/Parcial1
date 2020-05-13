class AddHonorIdToMemHon < ActiveRecord::Migration[6.0]
  def change
    add_reference :mem_hons, :honor, null: true, foreign_key: true
  end
end

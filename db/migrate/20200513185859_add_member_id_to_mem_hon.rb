class AddMemberIdToMemHon < ActiveRecord::Migration[6.0]
  def change
    add_reference :mem_hons, :member, null: false, foreign_key: true
  end
end

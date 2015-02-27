class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :word_sorted_downcase


      t.timestamps
    end
  end
end

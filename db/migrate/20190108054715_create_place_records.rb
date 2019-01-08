# frozen_string_literal: true

class CreatePlaceRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :place_records do |t|
      t.float :lat
      t.float :lon
      t.text :comment

      t.timestamps
    end
  end
end

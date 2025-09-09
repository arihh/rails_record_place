# frozen_string_literal: true

# == Schema Information
#
# Table name: place_records
#
#  id         :bigint(8)        not null, primary key
#  comment    :text
#  lat        :float
#  lon        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "rails_helper"

RSpec.describe PlaceRecord, type: :model do
  describe "memo functionality" do
    it "can create a place record with memo (comment)" do
      place_record = PlaceRecord.create!(
        lat: 35.6762,
        lon: 139.6503,
        comment: "東京駅でのメモ"
      )
      
      expect(place_record).to be_valid
      expect(place_record.comment).to eq("東京駅でのメモ")
      expect(place_record.lat).to eq(35.6762)
      expect(place_record.lon).to eq(139.6503)
    end
    
    it "can save a place record without memo" do
      place_record = PlaceRecord.create!(
        lat: 35.6762,
        lon: 139.6503
      )
      
      expect(place_record).to be_valid
      expect(place_record.comment).to be_nil
    end
    
    it "can update memo" do
      place_record = PlaceRecord.create!(
        lat: 35.6762,
        lon: 139.6503,
        comment: "最初のメモ"
      )
      
      place_record.update!(comment: "更新されたメモ")
      
      expect(place_record.comment).to eq("更新されたメモ")
    end
  end
end

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

FactoryBot.define do
  factory :place_record do
    lat { 1.5 }
    lon { 1.5 }
    comment { "MyText" }
  end
end

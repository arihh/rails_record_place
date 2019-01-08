# frozen_string_literal: true

require "rails_helper"

RSpec.describe "place_records/index", type: :view do
  before(:each) do
    assign(:place_records, [
      PlaceRecord.create!(
        lat: 2.5,
        lon: 3.5,
        comment: "MyText"
      ),
      PlaceRecord.create!(
        lat: 2.5,
        lon: 3.5,
        comment: "MyText"
      )
    ])
  end

  it "renders a list of place_records" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end

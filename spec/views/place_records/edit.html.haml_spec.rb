# frozen_string_literal: true

require "rails_helper"

RSpec.describe "place_records/edit", type: :view do
  before(:each) do
    @place_record = assign(:place_record, PlaceRecord.create!(
                                            lat: 1.5,
                                            lon: 1.5,
                                            comment: "MyText"
    ))
  end

  it "renders the edit place_record form" do
    render

    assert_select "form[action=?][method=?]", place_record_path(@place_record), "post" do
      assert_select "input[name=?]", "place_record[lat]"

      assert_select "input[name=?]", "place_record[lon]"

      assert_select "textarea[name=?]", "place_record[comment]"
    end
  end
end

# frozen_string_literal: true

require "rails_helper"

RSpec.describe "place_records/show", type: :view do
  before(:each) do
    @place_record = assign(:place_record, PlaceRecord.create!(
                                            lat: 2.5,
                                            lon: 3.5,
                                            comment: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/MyText/)
  end
end

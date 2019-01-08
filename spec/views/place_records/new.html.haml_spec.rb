require 'rails_helper'

RSpec.describe "place_records/new", type: :view do
  before(:each) do
    assign(:place_record, PlaceRecord.new(
      :lat => 1.5,
      :lon => 1.5,
      :comment => "MyText"
    ))
  end

  it "renders new place_record form" do
    render

    assert_select "form[action=?][method=?]", place_records_path, "post" do

      assert_select "input[name=?]", "place_record[lat]"

      assert_select "input[name=?]", "place_record[lon]"

      assert_select "textarea[name=?]", "place_record[comment]"
    end
  end
end

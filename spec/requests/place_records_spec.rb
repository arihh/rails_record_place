require 'rails_helper'

RSpec.describe "PlaceRecords", type: :request do
  describe "GET /place_records" do
    it "works! (now write some real specs)" do
      get place_records_path
      expect(response).to have_http_status(200)
    end
  end
end

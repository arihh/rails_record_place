# frozen_string_literal: true

require "rails_helper"

RSpec.describe PlaceRecordsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/place_records").to route_to("place_records#index")
    end

    it "routes to #new" do
      expect(get: "/place_records/new").to route_to("place_records#new")
    end

    it "routes to #show" do
      expect(get: "/place_records/1").to route_to("place_records#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/place_records/1/edit").to route_to("place_records#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/place_records").to route_to("place_records#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/place_records/1").to route_to("place_records#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/place_records/1").to route_to("place_records#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/place_records/1").to route_to("place_records#destroy", id: "1")
    end
  end
end

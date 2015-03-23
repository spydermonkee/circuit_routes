require 'spec_helper'

describe BoulderRoutesController do
  render_views
  describe "index" do
    before do
      BoulderRoute.create!(name: "Jonn's first route")
      BoulderRoute.create!(name: "Jonn's second route")
      BoulderRoute.create!(name: "Bill's awesome route!")
      BoulderRoute.create!(name: "Jim's route is the most fun")

      xhr :get, :index, format: :json, keywords: keywords
    end

    subject(:results) { JSON.parse(response.body) }

    def extract_name
      ->(object) { object["name"] }
    end

    context "when the search finds results" do
      let(:keywords) { 'route' }
      it 'should 200' do
        expect(response.status).to eq(200)
      end
      it 'should return four results' do
        expect(results["boulder_routes"].size).to eq(4)
      end
      it "should include 'Jonn's first route'" do
        expect(results['boulder_routes'].map(&extract_name)).to include("Jonn's first route")
      end
      it "should include 'Jonn's second route'" do
        expect(results['boulder_routes'].map(&extract_name)).to include("Jonn's second route")
      end
      it "should include 'Bill's awesome route'" do
        expect(results['boulder_routes'].map(&extract_name)).to include("Bill's awesome route!")
      end
      it "should include 'Jim's route is the most fun'" do
        expect(results['boulder_routes'].map(&extract_name)).to include("Jim's route is the most fun")
      end
    end

    context "when the search doesn't find results" do
      let(:keywords) { 'foo' }
      it 'should return no results' do
        expect(results['boulder_routes'].size).to eq(0)
      end
    end

  end
end
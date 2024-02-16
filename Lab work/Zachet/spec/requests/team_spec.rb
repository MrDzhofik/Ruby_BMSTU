require_relative '../rails_helper'

RSpec.describe "Teams", type: :request do
  describe "GET /show" do
    it "returns unauthorized" do
      get "/team/show"
      expect(response).to have_http_status(302)
    end
  end

end

require "spec_helper"

RSpec.describe WebsiteUrlCheck do
  it "has a version number" do
    expect(WebsiteUrlCheck::VERSION).not_to be "0.1.0"
  end

  context "with invalid url" do
    it "returns invalid url message" do
      expect(WebsiteUrlCheck.validate_url('www.sdasddsf.com')).to eq("Website URL is Invalid.")
    end
  end

  context "with valid url" do
    it "returns true" do
      expect(WebsiteUrlCheck.validate_url('www.google.com')).to eq(true)
    end
  end
end
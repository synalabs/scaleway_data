RSpec.describe ScalewayData do
  it "has a version number" do
    expect(ScalewayData::VERSION).not_to be nil
  end

  context "SCW_DEFAULT_PROJECT_ID" do
    it "from env" do
      ENV['SCW_DEFAULT_PROJECT_ID'] = "00000000-0000-0000-0000-000000000000"
      ENV['SCW_DEFAULT_REGION'] = "fr-par"
      ENV['SCW_DEFAULT_ZONE'] = "fr-par-1"
      expect(ScalewayData.project).to eq "00000000-0000-0000-0000-000000000000"
      expect(ScalewayData.region).to eq "fr-par"
      expect(ScalewayData.zone).to eq "fr-par-1"
    end
  end
end

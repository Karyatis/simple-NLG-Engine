require_relative "../fi_data"
require_relative "../fi_data_loader"

describe FIDataLoader do
  let(:filename) { "test_data.csv" }

  describe "#get_fidata_from_csv" do
    it "returns an array of FIData objects" do
      expect(FIDataLoader.get_fidata_from_csv(filename)).to be_an_instance_of(Array)
    end

    it "creates instances of FIData class" do
      expect(FIDataLoader.get_fidata_from_csv(filename)[0]).to be_an_instance_of(FIData)
    end
  end
end
require_relative "../fi_data"
require_relative "../fi_data_loader"

describe FIDataLoader do
  let(:filename) { "test_file.csv" }

  describe "#parse" do
    it "returns an array of FIData objects" do
      expect(FIDataLoader.parse(filename)).to be_an_instance_of(Array)
    end

    it "creates instances of FIData class" do
      expect(FIDataLoader.parse(filename)[0]).to be_an_instance_of(FIData)
    end
  end
end
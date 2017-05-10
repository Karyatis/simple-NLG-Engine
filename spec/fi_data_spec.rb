require_relative '../fi_data'

describe FIData do

  let(:fi_data) {FIData.new(name: "Konventional Kitchens", risk: "Risk 3 (Low)", zip: "60647", date: "05/08/2017", results: "Pass", violations: "NO EVIDENCE OF RODENT OR INSECT OUTER OPENINGS PROTECTED/RODENT PROOFED, A WRITTEN LOG SHALL BE MAINTAINED AVAILABLE TO THE INSPECTORS")}

  it 'returns name of establishment' do
    expect(fi_data.name).to eq "Konventional Kitchens"
  end
end

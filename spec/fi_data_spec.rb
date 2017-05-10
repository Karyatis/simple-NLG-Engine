require_relative '../fi_data'

describe FIData do

  let(:establishment) { FIData.new({DBA_Name: "Konventional Kitchens", Risk: "Risk 3 (Low)", Zip: "60647", Inspection_Date: "05/08/2017", Results: "Pass", Violations: "NO EVIDENCE OF RODENT OR INSECT OUTER OPENINGS PROTECTED/RODENT PROOFED, A WRITTEN LOG SHALL BE MAINTAINED AVAILABLE TO THE INSPECTORS"}) }

  it 'returns name of establishment' do
    expect(establishment.name).to eq "Konventional Kitchens"
  end
end

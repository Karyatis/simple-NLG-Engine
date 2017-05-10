require_relative '../fi_data'

describe FIData do

  let(:establishment) { FIData.new({dba_name: "Konventional Kitchens", risk: "Risk 3 (Low)", zipcode: "60647", date: "05/08/2017", results: "Pass", violations: "NO EVIDENCE OF RODENT OR INSECT OUTER OPENINGS PROTECTED/RODENT PROOFED, A WRITTEN LOG SHALL BE MAINTAINED AVAILABLE TO THE INSPECTORS"}) }

  it 'returns name of establishment' do
    expect(establishment.name).to eq "Konventional Kitchens"
  end
end

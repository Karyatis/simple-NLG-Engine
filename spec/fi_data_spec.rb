require_relative '../fi_data'

describe FIData do

  let(:establishment) { FIData.new({dba_name: "Konventional Kitchens", risk: "Risk 3 (Low)", zipcode: "60647", date: "05/08/2017", results: "Pass", violations: "NO EVIDENCE OF RODENT OR INSECT OUTER OPENINGS PROTECTED/RODENT PROOFED, A WRITTEN LOG SHALL BE MAINTAINED AVAILABLE TO THE INSPECTORS"}) }

  it 'returns name of establishment' do
    expect(establishment.name).to eq "Konventional Kitchens"
  end

  it 'returns risk level of establishment' do
    expect(establishment.risk).to eq "Risk 3 (Low)"
  end

  it 'returns zip code of establishment' do
    expect(establishment.zipcode).eql?("60647")
  end

  it 'returns date of establishment inspection' do
    expect(establishment.date).eql?("05/08/2017")
  end

  it 'returns result of establishment inspection' do
    expect(establishment.results).to eq "Pass"
  end

  it 'returns comments for establishment inspection' do
    expect(establishment.violations).to eq "NO EVIDENCE OF RODENT OR INSECT OUTER OPENINGS PROTECTED/RODENT PROOFED, A WRITTEN LOG SHALL BE MAINTAINED AVAILABLE TO THE INSPECTORS"
  end
end

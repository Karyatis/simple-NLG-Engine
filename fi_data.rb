class FIData

attr_reader :name, :risk, :zip, :date, :results, :violations

  def initialize(args={})
    @name = args[:DBA_Name]
    @risk = args[:Risk]
    @zip = args[:Zip]
    @date = args[:Inspection_Date]
    @results = args[:Results]
    @violations = args[:Violations]
  end
end


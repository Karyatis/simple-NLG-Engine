class FIData

attr_reader :name, :risk, :zipcode, :date, :results, :violations

  def initialize(args={})
    @name = args[:dba_name]
    @risk = args[:risk]
    @zipcode = args[:zip].to_s
    @date = args[:inspection_date]
    @results = args[:results]
    @violations = args[:violations]
  end
end


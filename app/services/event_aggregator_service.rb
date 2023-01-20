class EventAggregatorService
  def initialize; end

  def aggregate_events
    Ahoy::Event
      .where(name: 'Ran action')
      .where('time > ?', 24.hours.ago)
      .where_properties(controller: 'articles',
                        action: 'show')
      .group_by_hour(:time)
      .count
  end
end
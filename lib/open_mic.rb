class OpenMic
  attr_reader :date, :location, :performers

  def initialize(event)
    @date = event[:date]
    @location = event[:location]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    performers_jokes = @performers.map {|performer| performer.jokes}
    performers_jokes = performers_jokes.flatten
    performers_jokes != performers_jokes.uniq
  end

end

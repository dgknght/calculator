class Calculation
  REGEX = /\A([0-9\.]+)(?:\s*(\+|-|\/|\*)\s*([0-9\.]+))+\z/

  attr_accessor :input

  def initialize(params = {})
    self.input = params[:input]
  end

  def perform

  end

  private

  def parsed_input
    match = REGEX.match(input)
    raise "Invalid input '#{input}'" unless match
    match.to_a.drop(1)
  end
end

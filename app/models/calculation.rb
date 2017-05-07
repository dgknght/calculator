class Calculation

  NUMBER_REGEX = /\A\s*[0-9\.]+\s*\z/
  OPERATION_REGEX = /\A\s*([0-9\.]+)\s*(\+|\-|\*|\/)\s*(.*)/
  OPERATORS = %w(* / + -)
  DEFAULT_OPTIONS = {places: 2}

  attr_accessor :input

  def initialize(params = {})
    self.input = params[:input]
  end

  def perform(options = {})
    options = DEFAULT_OPTIONS.merge(options)
    result = OPERATORS.reduce(parsed_input) do |input, operator|
      if input.is_a? Array
        process_operator(input, operator)
      else
        input
      end
    end
    result.round(options[:places])
  end

  private

  def parsed_input
    @parsed_input ||= parse_input(input)
  end

  def parse_input(input)
    # single number (end of input)
    match = NUMBER_REGEX.match(input)
    return [match[0].to_f] if match

    # operation
    match = OPERATION_REGEX.match(input)
    raise "invalid input '#{input}'" unless match

    [match[1].to_f, match[2]] + parse_input(match[3])
  end

  # calculate all operations of the specified type
  # replacing the segements in the input with the result
  def process_operator(input, operator)
    while (index = input.index(operator)) do
      segment = input[(index-1)..(index+1)]
      result = segment[0].send(segment[1], segment[2])
      return result if input.length == 3 # last operation

      if index == 1
        # first segment
        input = [result] + input[(index+2)..-1]
      else
        # anything but the first segment
        input = input[0..(index-2)] + [result] + input[(index+2)..-1]
      end
    end
    input
  end
end

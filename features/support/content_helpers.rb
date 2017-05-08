module ContentHelpers
  def locator_for(section_identifier)
    case section_identifier
    when /^the (.*) area$/ then ".#{$1.gsub(/\s+/, '').underscore}"
    else raise "Unrecognized section identifier '#{section_identifier}'"
    end
  end
end
World(ContentHelpers)

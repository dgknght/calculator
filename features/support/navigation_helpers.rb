module NavigationHelpers
  def url_for(page_identifier)
    case page_identifier
    when 'calculator' then '/calculations'
    else raise "Unrecognized page identifier '#{identifier}'"
    end
  end
end
World(NavigationHelpers)

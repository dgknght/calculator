module NavigationHelpers
  def url_for(page_identifier)
    case page_identifier
    when 'calculator' then new_calculation_path
    else raise "Unrecognized page identifier '#{identifier}'"
    end
  end
end
World(NavigationHelpers)

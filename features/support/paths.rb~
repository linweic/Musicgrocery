module NavigationHelpers
  def path_to(page_name)
    case page_name

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /^the home page$/ 
      '/users/new'
    when /^the artist details page$/
      '/search/details'
    else
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
    end
    
  end
end

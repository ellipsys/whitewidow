# Color format the output of the program based on severity of the issue
module Format

  # @param [String] *args
  # Yellow is a warning
  def warning(input)
    puts "[" + "#{Time.now.strftime("%T")}".purple + " WARNING".yellow + "]" + " #{input}".yellow
  end

  # Red is a bad thing, this particular instance will kill the program
  def fatal(input)
    puts "[" + "#{Time.now.strftime("%T")}".purple + " FATAL".red + "]" +  " #{input}".red
  end

  # Red is still bad
  def err(input)
    puts "[" + "#{Time.now.strftime("%T")}".purple + " ERROR".red + "]" + " #{input}".red
  end

  # Green is good
  def info(input)
    puts "[" + "#{Time.now.strftime("%T")}".purple + " INFO".green + "]" + " #{input}".green
  end

  # Found a site wooohooo
  def success(input)
    puts "[" + "#{Time.now.strftime("%T")}".purple + " SUCCESS" + "]" + " #{input}"
  end

  # Throws the valuable information that you will need, this is very good.
  def site_found(input)

    success = 'Possible Vulnerability'.green.bold
    puts <<-_END_
    [ x ] -----------------------------------------------

    [#{Time.now.strftime("%T").purple} #{success}]

    [ X ]    Injection Point       :: #{input.cyan}
    [ X ]    Server Specifications :: #{SiteInfo.capture_host(input).cyan}
    [ X ]    Possible IP Address   :: #{SiteInfo.capture_ip(input).cyan}

            _END_
  end

  # And a normal usage page
  def usage(input)
    puts
    puts "[USAGE]#{input}".white
    puts
  end

end
require 'heroku/command/run'

class Heroku::Command::Papertrail < Heroku::Command::Run

  # papertrail:open
  #
  # open papertrail web interface
  def open
    puts Heroku::Command.commands.inspect
    puts Heroku::Command.global_options.inspect
    system("heroku addons:open papertrail")
  end
  alias_command 'papertrail', 'papertrail:open'

end

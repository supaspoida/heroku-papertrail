require 'heroku/command/run'

class Heroku::Command::Papertrail < Heroku::Command::Run

  # papertrail:open
  #
  # open papertrail web interface
  def open
    puts Heroku::Command.current_command.inspect
    puts Heroku::Command.current_args.inspect
    puts Heroku::Command.current_options.inspect
    system("heroku addons:open papertrail")
  end
  alias_command 'papertrail', 'papertrail:open'

end

require 'heroku/command/run'

class Heroku::Command::Papertrail < Heroku::Command::Run

  # papertrail:open
  #
  # open papertrail web interface
  def open
    system("heroku addons:open papertrail")
  end
  alias_command 'papertrail', 'papertrail:open'

end

require 'rubygems'
require 'rufus/scheduler'

Dir[File.join(File.dirname(__FILE__), 'procedures', '*.rb')].each { |file| require file }

require_relative 'config/cron.rb'
require_relative 'config/usermap.rb'
require_relative 'config/gmaid-credentials.rb'

require_relative 'lib/gmaid.rb'

scheduler = Rufus::Scheduler.start_new

cron_expr = get_cron_expr();
usermap = get_usermap();
gmaid_username = get_gmaid_username();
gmaid_password = get_gmaid_password();

scheduler.cron cron_expr, :allow_overlapping => false do
  Gmaid::run(usermap, gmaid_username, gmaid_password);
end

scheduler.join

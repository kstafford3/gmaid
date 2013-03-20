# Define your "cron" here (how often the gmaid should run)

def get_cron_expr()
  # minute hour date month day
  return '*/1 * * * *'
end

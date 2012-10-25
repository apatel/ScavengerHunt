namespace :scavenger_hunt do
  desc "Add the default admin"
  task :default_admin => :environment do
    user = Team.new(:login => 'admin', :email => 'anita@anitapatel.com')
    if %w[development test dev local].include?(Rails.env)
      user.password = '123456'
    else
      user.password = '123456'
    end
    user.admin = true
    user.save
    puts "Admin email is: #{user.email}"
    puts "Admin password is: #{user.password}"
  end
end
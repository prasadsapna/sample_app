namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Example User",
                         :email => "example@railstutorial.org",
                         :password => "foobar",
                         :password_confirmation => "foobar")
    admin.toggle!(:admin)
    50.times do
    	    User.all(:limit => 6).each do |user|
    	    #user.microposts.create!(:content => Faker::Lorem.sentence(5))
    	    end
    	  end
 end
end



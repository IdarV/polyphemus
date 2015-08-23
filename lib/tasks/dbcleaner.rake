desc 'drops database, creates it again and seeds'
task :cleandb => :environment do
  puts 'Rebuilding database'
  puts '- dropping database..'
  Rake::Task['db:drop'].invoke
  puts '- creating database..'
  Rake::Task['db:create'].invoke
  puts '- migrating database...'
  Rake::Task['db:migrate'].invoke
  puts '- seeding database...'
  Rake::Task['db:seed'].invoke
  puts 'Done!'
end
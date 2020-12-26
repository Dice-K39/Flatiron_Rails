namespace :preferences do 
  desc "Load app preferences" 
  task :load => :environment do
    if Preference.count == 0
      Preference.create(allow_create_artists: true, allow_create_songs: true)
    end
  end
end
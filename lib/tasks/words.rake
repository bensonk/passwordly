namespace :words do
  desc "Read words from /usr/share/dict/words"
  task :read => :environment do
    File.new("/usr/share/dict/words").each do |word|
      w = Word.new
      w.value = word.strip()
      w.save
    end
  end
end

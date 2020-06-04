require 'pg'

class DiaryEntry
  
  def self.create(title:, entry:)
    connection = PG.connect(dbname: 'diary_manager')
    connection.exec("INSERT INTO diary_entries (title, entry) VALUES ('#{title}', '#{entry}');")
  end
end
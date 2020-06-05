require 'pg'

class DiaryEntry
  attr_reader :title, :entry

  def initialize(title:, entry:)
    @title = title
    @entry = entry
  end
  
  def self.create(title:, entry:)
    connection = PG.connect(dbname: 'diary_manager')
    connection.exec("INSERT INTO diary_entries (title, entry) VALUES ('#{title}', '#{entry}');")
  end

  def self.all
    connection = PG.connect(dbname: 'diary_manager')
    
    result = connection.exec("SELECT * FROM diary_entries")
    result.map do |hash|
      DiaryEntry.new(title: hash['title'], entry: hash['entry'])
    end
  end

end
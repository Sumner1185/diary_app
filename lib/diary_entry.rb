require 'pg'

class DiaryEntry
  attr_reader :title, :entry, :id

  def initialize(id:, title:, entry:)
    @id = id
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
      DiaryEntry.new(id: hash['id'], title: hash['title'], entry: hash['entry'])
    end
  end

  def self.find(id:)
    connection = PG.connect(dbname: 'diary_manager')
    result = connection.exec("SELECT * FROM diary_entries WHERE id = #{id};")
    DiaryEntry.new(id: result[0]['id'], title: result[0]['title'], entry: result[0]['entry'])
  end

end
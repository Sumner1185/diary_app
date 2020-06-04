class DiaryEntry

  def self.create(title, entry)
    connection = PG.connect(dbname: 'diary_manager')
    connection.exec("INSERT INTO entries (title, entry) VALUES ('#{title}, #{entry}');")
  end
end
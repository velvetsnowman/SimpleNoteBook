class NoteHandler

  attr_reader :notebook

  def initialize
    @notebook = []
  end

  def writeNote(title, body)
    @notebook.push({
      body: "#{body}",
      title: "#{title}"
                  })
  end

  def showTitles
    i = 1
    @notebook.each do |note|
      puts "#{i}: " + "#{note[:title]}"
      i += 1
    end
  end
end

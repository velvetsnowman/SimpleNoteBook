# frozen_string_literal: true
class NotePrinter

  def printNote(note)
    printFormat
    puts "| #{note[:title]} | #{note[:body]} |"
  end

  private
  def printFormat
    puts '| Title | ----- | Body |'
  end
end

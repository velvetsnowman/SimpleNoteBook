# frozen_string_literal: true
require_relative 'notePrinter.rb'

class NoteHandler
  attr_reader :notebook,
              :notePrinter

  def initialize
    @notebook = []
    @notePrinter = NotePrinter.new
  end

  def writeNote(title, body)
    raise "Must be a string" unless (title.is_a? String) && (body.is_a? String)
    @notebook.push(
      body: body.to_s,
      title: title.to_s
    )
  end

  def showTitles
    i = 1
    @notebook.each do |note|
      puts "#{i}: " + (note[:title]).to_s
      i += 1
    end
  end

  def printNote(title_index)
    raise "You must enter a number" unless (title_index.is_a? Integer)
    @notePrinter.printNote(@notebook[title_index - 1])
  end
end

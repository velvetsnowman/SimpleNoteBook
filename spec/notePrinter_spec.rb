# frozen_string_literal: true
require 'NotePrinter.rb'
require 'NoteHandler.rb'

describe NotePrinter do
  let (:noteHandler) { NoteHandler.new }
  let (:notePrinter) { NotePrinter.new }

  specify 'should let a user print a note with its title and body' do
    noteHandler.writeNote('Shopping List', 'bananas')
    expect { noteHandler.printNote(1) }.to output(
      "| Title | ----- | Body |\n" + "| Shopping List | bananas |\n"
    ).to_stdout
  end
end

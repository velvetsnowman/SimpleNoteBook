# frozen_string_literal: true
require 'noteHandler.rb'

describe NoteHandler do
  let (:subject)     { NoteHandler.new              }
  let (:notePrinter) { double :notePrinter_instance }

  it 'should let a user store a note with a title and a body' do
    subject.writeNote('Shopping list', 'bananas')
    expect(subject.notebook).to include(body: 'bananas', title: 'Shopping list')
  end

  it 'shoud throw an error if a user enters an invalid format' do
      expect { subject.writeNote(1, 'bananas') }.to raise_error 'Must be a string'
  end

  it 'shoud throw an error if a user enters an invalid format' do
    subject.writeNote('Shopping list', 'bananas')
    expect { subject.printNote("1") }.to raise_error 'You must enter a number'
  end

  specify do
    subject.writeNote('Shopping List', 'bananas')
    expect { subject.showTitles }.to output("1: Shopping List\n").to_stdout
  end

  it 'should let a user pick a note by its number and view its body' do
    expect(subject.notePrinter).to receive(:printNote).with(subject.notebook[0])
    subject.printNote(1)
  end
end

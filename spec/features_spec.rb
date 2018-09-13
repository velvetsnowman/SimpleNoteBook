# frozen_string_literal: true

require 'NoteHandler.rb'
describe 'NoteBook' do
  it 'should let a user create a notebook with a title and body' do
    my_notebook = NoteHandler.new
    expect { my_notebook.writeNote('Hello', 'There') }.not_to raise_error
  end

  it 'should let a user view a list of note titles' do
    my_notebook = NoteHandler.new
    expect { my_notebook.showTitles }.not_to raise_error
  end

  it 'should let a user pick a note title to view' do
    my_notebook = NoteHandler.new
    my_notebook.writeNote('Shopping List', 'bananas')
    expect { my_notebook.printNote(0) }.not_to raise_error
  end
end

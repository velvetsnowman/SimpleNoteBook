require 'NoteHandler.rb'
describe NoteHandler do

  let (:subject) { NoteHandler.new }

  it 'should let a user store a note with a title and a body' do
    subject.writeNote("Shopping list", "bananas")
    expect(subject.notebook).to include({:body=>"bananas", :title=>"Shopping list"})
  end

  specify do
    subject.writeNote("Shopping List", "bananas")
    expect{subject.showTitles}.to output("1: Shopping List\n").to_stdout
  end

end

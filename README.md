## How to interact with my code

* Open your terminal
* Navigate to your chosen directory, and run:

```
git clone https://github.com/velvetsnowman/simpleNoteBook.git
```
```
cd simpleNoteBook
```
```
* bundle install
* irb
* require './lib/noteHandler.rb'
* my_notebook = NoteHandler.new
```
* This will create a notebook for you to store notes with titles and bodies
```
* my_notebook.writeNote("Your Title", "Your Body")
* my_notebook.showTitles
```

* This should give you an output like this:
```
1. Your Title
```
* To chose a selected note to view, run this command with the desired note's index number:

```
* my_notebook.printNote(1)
```
* You should see something like this:
```
| Title | ----- | Body |
| Your Title | Your Body |
```
* For testing please run
```
* rspec
```

## User Stories

```
As a user,
So I can use a notebook,
I would like to be able to add a title and a body.
```

```
As a user,
So I can see what I have written,
I would like to view a list of all my titles.
```

```
As a user,
So I can view a note's contents,
I would like to chose a title and view its body.
```

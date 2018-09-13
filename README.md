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
As a client,
So I can own a bank account,
I would like to be able to create one with an initial balance of 0.
```

```
As a client,
So I can safely store my hard earned money,
I would like to be able to deposit a sum into my bank account.
```

```
As a client,
So I can spend my hard earned money,
I would like to be able to withdraw a sum from my bank account
```

```
As a client,
So I can see my personal wealth,
I would like to be able to see the total amount of money I have in my bank account
```

```
As a client,
So I can keep track of my transactions,
I would like to be able to see a transaction date
```

```
As a client,
So I can see a summary of my account,
I would like to be able to see my bank statement
```

# Ruby Rorschach 1.0

## MANDATORY: READ THIS SECTION FIRST!
---

### System Requirements:

Before you install please make sure your machine meets the following specs:

- Mac OS 10.1 or later
- OR
- Windows XP/Vista/7
- Both with at least
- 1GB RAM
- 200 MB Storage
- Keyboard with functioning up, down and enter keys. If you want to type in  your actual name the letters of your keyboard that correspond to your name must also be working! ;-)

---

### Ruby Gems

The following Ruby Gems are required to be able to run the Application. To Run and install Ruby Gems please read this webpage first:

https://guides.rubygems.org/rubygems-basics/

---
### Required Ruby Gems:

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

- gem "rails"

- gem "colorize", "~> 0.8.1"

- gem "rspec", "~> 3.9"

- gem "tty-prompt", "~> 0.22.0"

- gem "pastel", "~> 0.8.0"

- gem "bundler", "~> 2.1"

- gem "rainbow", "~> 3.0"

---

**ONCE YOU HAVE FINISHED THE ABOVE MANDATORY SECTION FOLLOW THE INSTRUCTIONS BELOW TO USE RUBY RORSCHACH 1.0**


# Thanks for using Ruby Rorschach 1.0

**To get started, download Ruby Rorschach from:**

https://github.com/GDawg78/RubyRorschach

---

## HOW TO RUN RUBY RORSCHACH

***WARNING, YOU WILL NEED ALL OF THE RUBY GEMS INSTALLED FIRST, PLEASE SEE MANDATORY SECTION BEFORE YOU TRY TO RUN!***

1. Download the App Bundle to a local directory
2. Open a terminal window and navigate, via the terminal, to the app directory you downloaded in Step 1.
3. Once you are in the directory where you can see the file .RubyRorschach.rb (which should be in the root directory of the application), type in ./RunRubyRorschach and this will start the Application running!

---

## HOW TO USE RUBY RORSCHACH

Ruby Rorschach is designed to be an extremely simple application to use. Simply choose 'Take Test' to run through the Rorschach test, or Exit to exit out of the application and test.

If you choose to take the test you will be given x10 images to look at, and you will be expected to choose on of the four multiple choice type answers presented to you on screen. After you finish the test you will be given the results on screen, and a text file will be saved to the root of the application folder for your future reference, with a date stamp of the time you took the test. If you take the test multiple times the file will be appended to with your results of each time you have taken the test, again with timestamps. You will have to use the same name though each time you take the test or a new file will be saved with the new name you have typed.

Controls are very simple, simply use the up/down arrows and enter key to select your multiple choice answer. You will also be prompted to type in your first name and surname before you run the test.


---

## Known Errors:

Ruby Rorschach is designed to be as error free as possible. Your input will be limited to the up, down and enter keys to make your selections and being able to type your Name when prompted. To mitigate any potential errors please keep the name you enter sensible. If you type any string over 256 characters you may encounter errors.

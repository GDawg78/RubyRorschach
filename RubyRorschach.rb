require "tty-prompt"
require 'colorize'
require_relative "./models/Plates.rb"
require_relative "./models/bananna.rb"

prompt = TTY::Prompt.new

puts "Welcome to the Ruby Rorschach Test\n"
puts "
▄▄                                                                ▄▄                       ▄▄        
▀███▀▀▀██▄             ▄██                     ▀███▀▀▀██▄                                ███                      ███        
  ██   ▀██▄             ██                       ██   ▀██▄                                ██                       ██        
  ██   ▄██ ▀███  ▀███   ██▄████▄ ▀██▀   ▀██▀     ██   ▄██   ▄██▀██▄▀███▄███ ▄██▀███▄██▀██ ███████▄  ▄█▀██▄  ▄██▀██ ███████▄  
  ███████    ██    ██   ██    ▀██  ██   ▄█       ███████   ██▀   ▀██ ██▀ ▀▀ ██   ▀▀█▀  ██ ██    ██ ██   ██ ██▀  ██ ██    ██  
  ██  ██▄    ██    ██   ██     ██   ██ ▄█        ██  ██▄   ██     ██ ██     ▀█████▄█      ██    ██  ▄█████ ██      ██    ██  
  ██   ▀██▄  ██    ██   ██▄   ▄██    ███         ██   ▀██▄ ██▄   ▄██ ██     █▄   ███▄    ▄██    ██ ██   ██ ██▄    ▄██    ██  
▄████▄ ▄███▄ ▀████▀███▄ █▀█████▀     ▄█        ▄████▄ ▄███▄ ▀█████▀▄████▄   ██████▀█████▀████  ████▄████▀██▄█████▀████  ████▄
                                   ▄█                                                                                        
                                 ██▀                                                                                         


".colorize(:blue)

# self.go

puts "Please select your option from the menu below: "

def app_loop
    prompt = TTY::Prompt.new
    answer = prompt.select("Choose your option?", %w(Take\ Test Exit))
    case answer
    when "Exit"
        puts "thankyou, goodbye"
        exit
    when "Take\ Test"
        system ("clear")
        puts "Please view image and select the best response for you"
        plates1
        answer_one = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates2
        answer_two = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates3
        answer_three = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates4
        answer_four = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates5
        answer_five = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates6
        answer_six = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates7
        answer_seven = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates8
        answer_eight = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates9
        answer_nine = prompt.select("Choose", %w(A B C D))
        system ("clear")
        puts "Please view image and select the best response for you"
        plates10
        answer_ten = prompt.select("Choose", %w(A B C D))
    end
    system ("clear")

    puts "
    
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ░░░   ░░░░░░░░░░
▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒   ▒▒▒▒▒▒▒▒▒▒
▒  ▒    ▒▒▒▒   ▒▒▒▒▒▒     ▒▒   ▒▒   ▒   ▒    ▒  ▒▒     ▒
▓▓   ▓▓▓▓▓  ▓▓▓   ▓▓   ▓▓▓▓▓   ▓▓   ▓   ▓▓▓   ▓▓▓   ▓▓▓▓
▓▓   ▓▓▓▓         ▓▓▓▓    ▓▓   ▓▓   ▓   ▓▓▓   ▓▓▓▓▓    ▓
▓▓   ▓▓▓▓  ▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓   ▓▓   ▓   ▓▓▓   ▓ ▓▓▓▓▓   
█    ██████     ████      ████      █   ████   ██      █
████████████████████████████████████████████████████████



    "
end

app_loop


                        

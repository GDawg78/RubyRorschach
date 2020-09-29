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

puts "Please select your option from the menu below: "

def app_loop
    while true
        answer_values = {"Paranoid" => 0, "Sane" => 0, "Insane" => 0, "Happy" => 0 }
        prompt = TTY::Prompt.new
        answer = prompt.select("Choose your option?", ["Take Test", "Exit"])
        case answer
        when "Exit"
            puts "thankyou, goodbye"
            exit
        when "Take Test"
            system ("clear")
            puts "Please view image and select the best response for you"
            plates1
            answer_one = prompt.select("Choose", ["A: Bat", "B: Dog", "C: Mouse", "D: Rabbit"]) # keep that format
            case answer_one[0]
            when "A"
                answer_values["Paranoid"] += 1
            when "B"
                answer_values["Sane"] += 1
            when "C"
                answer_values["Insane"] += 1
            when "D"
                answer_values["Happy"] += 1
            end
            puts answer_values
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


                        

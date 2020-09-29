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
            answer_one = prompt.select("Choose", ["A: A Bat", "B: Two people", "C: Pincers of a crab", "D: A pelvis"]) # keep that format
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
            answer_two = prompt.select("Choose", ["A: Two clowns", "B: A bug somebody stepped on", "C: A bursting bomb", "D: A bloody spinal column"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates3
            answer_three = prompt.select("Choose", ["A: Two men", "B: A butterfly", "C: Part of my body", "D: Two birds"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates4
            answer_four = prompt.select("Choose", ["A: Head of animal", "B: Lungs and chest", "C: An X-ray picture", "D: A nasty mess"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates5
            answer_five = prompt.select("Choose", ["A: A bat or butterfly", "B: An alligator's head", "C: A smashed body", "D: A fan dancer"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates6
            answer_six = prompt.select("Choose", ["A: Sex organs", "B: A fur rug", "C: A turtle", "D: Two kings' crowns"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates7
            answer_seven = prompt.select("Choose", ["A: Two women talking", "B: Bookends", "C: A map", "D: Lamb's tails, or feathers"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates8
            answer_eight = prompt.select("Choose", ["A: Parts of my body", "B: A horseshoe crab", "C: Fire and ice, life and death", "D: Two animals"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates9
            answer_nine = prompt.select("Choose", ["A: Sea horses, or lobsters", "B: Flowers or underwater vegetation", "C: Deer or horns of a deer", "D: Two people-witches or Santa Clauses"])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates10
            answer_ten = prompt.select("Choose", ["A: A Chinese print", "B: Nothing at all", "C: Spider, caterpillars, crabs and insects", "D: Two people"])
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


                        

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

$answer_values = {}

def evaluate_answer(answer)
    case answer
    when "A"
        $answer_values["Common, Well adjusted"] += 1
    when "B"
        $answer_values["Psychopathy"] += 1
    when "C"
        $answer_values["Psychological disturbance"] += 1
    when "D"
        $answer_values["Paranoid"] += 1
    end
end

def app_loop
    while true
        $answer_values = {"Common, Well adjusted" => 0, "Psychopathy" => 0, "Psychological disturbance" => 0, "Paranoid" => 0 }
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
            evaluate_answer(answer_one[0])
            puts $answer_values
            system ("clear")
            puts "Please view image and select the best response for you"
            plates2
            answer_two = prompt.select("Choose", ["A: Two clowns", "B: A bug somebody stepped on", "C: A bursting bomb", "D: A bloody spinal column"])
            evaluate_answer(answer_two[0])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates3
            answer_three = prompt.select("Choose", ["A: Two men", "B: A butterfly", "C: Part of my body", "D: Two birds"])
            evaluate_answer(answer_three[0])
            puts $answer_values
            system ("clear")
            puts "Please view image and select the best response for you"
            plates4
            answer_four = prompt.select("Choose", ["A: Head of animal", "B: Lungs and chest", "C: An X-ray picture", "D: A nasty mess"])
            evaluate_answer(answer_four[0])
            puts $answer_values
            system ("clear")
            puts "Please view image and select the best response for you"
            plates5
            answer_five = prompt.select("Choose", ["A: A bat or butterfly", "B: An alligator's head", "C: A smashed body", "D: A fan dancer"])
            evaluate_answer(answer_five[0])
            puts $answer_values
            system ("clear")
            puts "Please view image and select the best response for you"
            plates6
            answer_six = prompt.select("Choose", ["A: Sex organs", "B: A fur rug", "C: A turtle", "D: Two kings' crowns"])
            evaluate_answer(answer_six[0])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates7
            answer_seven = prompt.select("Choose", ["A: Two women talking", "B: Bookends", "C: A map", "D: Lamb's tails, or feathers"])
            evaluate_answer(answer_seven[0])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates8
            answer_eight = prompt.select("Choose", ["A: Parts of my body", "B: A horseshoe crab", "C: Fire and ice, life and death", "D: Two animals"])
            case answer_eight[0]
            evaluate_answer(answer_eight[0])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates9
            answer_nine = prompt.select("Choose", ["A: Sea horses, or lobsters", "B: Flowers or underwater vegetation", "C: Deer or horns of a deer", "D: Two people-witches or Santa Clauses"])
            evaluate_answer(answer_nine[0])
            system ("clear")
            puts "Please view image and select the best response for you"
            plates10
            answer_ten = prompt.select("Choose", ["A: A Chinese print", "B: Nothing at all", "C: Spider, caterpillars, crabs and insects", "D: Two people"])
            evaluate_answer(answer_ten[0])
            system ("clear")
        end
    end
    
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

    puts " You have scored a highly in the ... Range: this shows that you... "

end

app_loop



                      

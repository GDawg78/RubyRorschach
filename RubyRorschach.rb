require "tty-prompt"
require 'colorize'
require_relative "./models/Plates.rb"
require_relative "./models/bananna.rb"

$prompt = TTY::Prompt.new

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
$prompt = TTY::Prompt.new
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

def next_plate
    system ("clear")
    puts "Please view image and select the best response for you"
end

def take_test
    next_plate
    plates1
    answer_one = $prompt.select("Choose", ["A: A Bat", "B: Two people", "C: Pincers of a crab", "D: A pelvis"]) # keep that format
    evaluate_answer(answer_one[0])
    next_plate
    plates2
    answer_two = $prompt.select("Choose", ["A: Two clowns", "B: A bug somebody stepped on", "C: A bursting bomb", "D: A bloody spinal column"])
    evaluate_answer(answer_two[0])
    next_plate
    plates3
    answer_three = $prompt.select("Choose", ["A: Two men", "B: A butterfly", "C: Part of my body", "D: Two birds"])
    evaluate_answer(answer_three[0])
    next_plate
    plates4
    answer_four = $prompt.select("Choose", ["A: Head of animal", "B: Lungs and chest", "C: An X-ray picture", "D: A nasty mess"])
    evaluate_answer(answer_four[0])
    next_plate
    plates5
    answer_five = $prompt.select("Choose", ["A: A bat or butterfly", "B: An alligator's head", "C: A smashed body", "D: A fan dancer"])
    evaluate_answer(answer_five[0])
    next_plate
    plates6
    answer_six = $prompt.select("Choose", ["A: Sex organs", "B: A fur rug", "C: A turtle", "D: Two kings' crowns"])
    evaluate_answer(answer_six[0])
    next_plate
    plates7
    answer_seven = $prompt.select("Choose", ["A: Two women talking", "B: Bookends", "C: A map", "D: Lamb's tails, or feathers"])
    evaluate_answer(answer_seven[0])
    next_plate
    plates8
    answer_eight = $prompt.select("Choose", ["A: Parts of my body", "B: A horseshoe crab", "C: Fire and ice, life and death", "D: Two animals"])
    evaluate_answer(answer_eight[0])
    next_plate
    plates9
    answer_nine = $prompt.select("Choose", ["A: Sea horses, or lobsters", "B: Flowers or underwater vegetation", "C: Deer or horns of a deer", "D: Two people-witches or Santa Clauses"])
    evaluate_answer(answer_nine[0])
    next_plate
    plates10
    answer_ten = $prompt.select("Choose", ["A: A Chinese print", "B: Nothing at all", "C: Spider, caterpillars, crabs and insects", "D: Two people"])
    evaluate_answer(answer_ten[0])
    system ("clear")
end

def app_loop
    while true
        $answer_values = {"Common, Well adjusted" => 0, "Psychopathy" => 0, "Psychological disturbance" => 0, "Paranoid" => 0 }
        answer = $prompt.select("Choose your option?", ["Take Test", "Exit"])
        case answer
        when "Exit"
            puts "
            ░▀▀█▀▀░█░░░░█▀▀▄░█▀▀▄░█░▄░░░█░░█░▄▀▀▄░█░▒█░░░░░░▒█▀▀█░▄▀▀▄░▄▀▀▄░█▀▄░█▀▀▄░█░░█░█▀▀░█
            ░░▒█░░░█▀▀█░█▄▄█░█░▒█░█▀▄░░░█▄▄█░█░░█░█░▒█░▄▄░░░▒█░▄▄░█░░█░█░░█░█░█░█▀▀▄░█▄▄█░█▀▀░▀
            ░░▒█░░░▀░░▀░▀░░▀░▀░░▀░▀░▀░░░▄▄▄▀░░▀▀░░░▀▀▀░▀▀░░░▒█▄▄▀░░▀▀░░░▀▀░░▀▀░░▀▀▀▀░▄▄▄▀░▀▀▀░▄
            "
            exit
        when "Take Test"
            take_test
            highest_score_keys = [] #array from hash keys dependent on highest score
            highest_score_value = $answer_values.values.max #grabs the first found highest score... 
            $answer_values.each do |k,v|
                if v == highest_score_value then # this checks to see if there are equally highest scored values
                    highest_score_keys.push(k)
                end
            end
            puts "
            ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██
            ░        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░   ░░░   ░░░░░░░░░░██
            ▒   ▒▒▒▒   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒   ▒▒▒▒▒▒▒▒▒▒██
            ▒   ▒▒▒▒   ▒▒▒▒▒▒   ▒▒▒▒▒▒     ▒▒   ▒▒   ▒   ▒    ▒  ▒▒     ▒██
            ▓  ▓   ▓▓▓▓▓▓▓▓  ▓▓▓   ▓▓   ▓▓▓▓▓   ▓▓   ▓   ▓▓▓   ▓▓▓   ▓▓▓▓██
            ▓   ▓▓   ▓▓▓▓▓         ▓▓▓▓    ▓▓   ▓▓   ▓   ▓▓▓   ▓▓▓▓▓    ▓██
            ▓   ▓▓▓▓   ▓▓▓  ▓▓▓▓▓▓▓▓▓▓▓▓▓   ▓   ▓▓   ▓   ▓▓▓   ▓ ▓▓▓▓▓   ██
            █   ██████   ███     ████      ████      █   ████   ██      ███
            ███████████████████████████████████████████████████████████████
            "
            puts "You scored the higest in" + "#{highest_score_keys} ".colorize(:red)
            puts "Your breakdown of each result was" #put in percentage breakdown here
            puts "put reccomendations" #puts reccomendation based on highest score
            # exports results to *.txt file
        end
    end
end    

app_loop 

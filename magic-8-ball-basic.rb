require 'pry'
require 'colorize'

def say_hi
  (1..4).each do |i|
    puts ''
  end
  puts '=============================='
  puts '|    *** MAGIC 8-BALL ***    |'
  puts '=============================='
  puts ''
end

def get_question
  puts 'Ask a yes-or-no question:'
  puts '(Or type QUIT to exit)'
  puts ''
  question = gets
  return question
end

def give_answer
  answers = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful",
  ]
  puts "--==*** #{answers.sample} ***==--"
  puts ''
  puts ''
  puts ''
end

say_hi

while true
  if get_question.downcase.strip == 'quit'
    puts 'See you next time.'
    exit
  end
  give_answer
end

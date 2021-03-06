require 'pry'
require 'colorize'

@answers = [
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
  "No"
]
@answers_master = @answers.clone
# puts @answers_master

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
  puts "--==*** #{@answers.sample} ***==--"
  puts ''
  puts ''
  puts ''
end

def get_new_answer
  puts 'With what new answer do you want to empower the Magic 8-Ball?'
  new_answer = gets
  new_answer = new_answer.strip
  if @answers.include? new_answer
    puts 'That answer already exists. Returning to normal operation.'
    puts ''
  else
    @answers << new_answer
    puts 'Your new answer has been added.'
    puts ''
    # (0..@answers.length).each do |i|
    #   puts @answers[i]
    # end
  end
end

def reset_answers
  @answers = @answers_master.clone
  puts 'Answers have been reset to default.'
  puts ''
  # (0..@answers.length).each do |i|
  #   puts @answers[i]
  # end
end

def print_answers
  puts 'Current Magic 8-Ball answers:'
  (0..@answers.length).each do |i|
    puts @answers[i]
  end
  puts ''
end

say_hi

while true
  question = get_question.downcase.strip
  if question == 'quit'
    puts 'See you next time.'
    exit
  elsif question == 'add'
    get_new_answer
  elsif question == 'reset'
    reset_answers
  elsif question == 'print'
    print_answers
  else
    give_answer
  end
end

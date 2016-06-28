require 'sinatra'

get('/') do
  erb :fizzbuzz
end

def fizzbuzz(number)
    if (number % 3 == 0) && (number % 5 == 0)
        'FIZZBUZZ!!'
    elsif number % 3 == 0
        "FIZ#{"Z" * rand(30)}!"
    elsif number % 5 == 0
        "BUZ#{"Z" * rand(30)}!"
    else 
        "#{number}...  :("
    end
end

post('/result') do
	puts params[:number]
	@number = params[:number].to_i
    @fizzbuzz = fizzbuzz(@number)
	erb :result
end

post('/result') do
    puts params[:number]
    @number = params[:number].to_i
    @fizzbuzz = fizzbuzz(@number)
    erb :result
end


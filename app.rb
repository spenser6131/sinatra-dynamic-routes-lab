require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end


  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  
  get '/say/:number/:phrase' do
    result = ''
    @n = params[:number].to_i
    @phrase = params[:phrase]
    @n.times do
      result += @phrase
    end
    result
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end


  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    if @op == "divide"
      (n1 / n2).to_s
    elsif @op == "multiply"
      (n1 * n2).to_s
    elsif @op == "add"
      (n1 + n2).to_s
    elsif @op == "subtract"
      (n1 - n2).to_s
    end
  end

end
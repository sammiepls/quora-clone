post '/answers' do
  answer = Answer.new(params[:answer])
  if answer.save
    erb :"static/home"
  else
    @errors = question.errors.messages
    erb :"static/home"
  end
end

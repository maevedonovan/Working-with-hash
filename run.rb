require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = Array.new

  @state = { id: "CO", name: "Colorado"}
  @states << @state

  @state = { id: "PA", name: "Pennsylvania"}
  @states << @state

  @state = { id: "WA", name: "Washington"}
  @states << @state

  @state = { id: "ME", name: "Maine"}
  @states << @state

  @state = { id: "VT", name: "Vermont"}
  @states << @state
  
  @states.sort_by { |:name| }
  erb :states, layout: :main
end

class Application

  def call(env)
    resp = Rack::Response.new
    # binding.pry
    x = Time.now()
    time= x.to_s.split[1]
    morning = time.split(":")[0]

    if morning.to_i <= 12
      resp.write "Good Morning"
    else
      resp.write "Afternoon"
    end


    resp.finish
  end

end

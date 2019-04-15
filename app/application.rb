class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.localtime
    resp.write "Current time is #{current_time.hour}:#{current_time.min}\n"
    resp.write current_time.hour > 11? "Good Morning!" : "Good Afternoon!"
    resp.finish
  end
end

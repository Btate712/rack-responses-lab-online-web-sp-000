class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    current_hour = current_time.hour
    resp.write current_hour > 11? "Good Morning!" : "Good Afternoon!"
    resp.finish
  end
end

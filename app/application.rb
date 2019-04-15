class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    resp.write "Current time is #{current_time.hour}:#{current_time.min}\n"
    resp.write current_time.hour.to_i > 11? "Good Afternoon!" : "Good Morning!"
    resp.finish
  end
end

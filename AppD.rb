require 'curb'
require 'json'

print "Enter TEST or PROD: "
env_set = gets.chomp
app_contoller = env_set

case env_set
when "PROD"
  env = ""
when "TEST"
  env = ""
end

def rest_req(url, h_method, app_contoller)
  case h_method
  when "GET"
    http = Curl.get("#{url}")
  when "POST"
    http = Curl::Easy.http_post("#{url}")
  end
    http.http_auth_types = :basic
    if app_contoller == "PROD"
      http.username = '#'
      http.password = '#'
    else
      http.username = '#'
      http.password = '#'
    end
    http.perform
  puts http.body_str
end

# List apps in Controller
list_apps = "https://#{env}.saas.appdynamics.com/controller/rest/applications?output=JSON"

# Get healthrule violations for QL WordPress for last 15 minutes
hr_violations = "https://#{env}.saas.appdynamics.com/controller/rest/applications/59/problems/healthrule-violations?time-range-type=BEFORE_NOW&duration-in-mins=15&output=JSON"

# Drop a 90K Close Event in WordPress Application
close_90k = "https://#{env}.saas.appdynamics.com/controller/rest/applications/59/events?eventtype=CUSTOM&customeventtype=90K&summary=90K%20Close&severity=WARN"

# Drop a 90K Open Event in WordPress Application
open_90k = "https://#{env}.saas.appdynamics.com/controller/rest/applications/59/events?eventtype=CUSTOM&customeventtype=90KOpen&summary=90K%20Open&severity=WARN"

h_method = "GET"
url = list_apps

rest_req(url, h_method, app_contoller)





# Change Email URL for PROD
# Build JSON Payload
json_payload = {}
json_payload['key'] = 'value'
json_string = json_payload.to_json()

def update_url
  http = Curl::Easy.http_post("https://#{env}.saas.appdynamics.com/controller/rest/accounts/#{env}/update-controller-url", json_string
    ) do |curl|
      curl.headers['Content-Type'] = 'application/json'
    end
end

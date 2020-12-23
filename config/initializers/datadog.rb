Datadog.configure do |c|
  c.use :rails, service_name: "my-app-web", cache_service: "my-app-cache", database_service: "my-app-postgres"
  c.use :action_cable, service_name: "my-app-actioncable"
end

puts Datadog.configuration[:action_cable][:service_name]

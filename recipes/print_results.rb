roles = node.roles

Chef::Log.info("Chef Environment: #{node.chef_environment}")
Chef::Log.info("Recipes Applied: #{node.recipes.map {|x| x.to_s} }")
if roles.count > 0
  Chef::Log.info("Roles Applied: #{roles.each {|r| r.to_s } }")
else
  Chef::Log.info("Roles Applied: None")
end


# Print the values set for each Precedence Level
node[:precedence].each do |level, value|
  Chef::Log.info("#{level.to_s} = #{value.to_s}")
end

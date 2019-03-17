cookbook_path ['./cookbooks']
local_mode true
if File.basename($PROGRAM_NAME).eql?('chef') && ARGV[0].eql?('generate')
  chefdk.generator.license = "all_rights"
  chefdk.generator.copyright_holder = "DevOps Foot Locker"
  chefdk.generator.email = "you@footlocker.com"
  chefdk.generator_cookbook = "./code_generator"
end

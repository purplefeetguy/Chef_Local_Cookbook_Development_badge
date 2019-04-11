cookbook_path ['./cookbooks']
local_mode true
if File.basename($PROGRAM_NAME).eql?('chef') && ARGV[0].eql?('generate')
  chefdk.generator.license = "all_rights"
  chefdk.generator.copyright_holder = "Purplefeet Labs"
  chefdk.generator.email = "you@purplefeetlabs.com"
  chefdk.generator_cookbook = "./generator/lcd_origin"
end

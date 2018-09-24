#
# Cookbook:: logcleanup
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#variables
app_home = node['logcleanup']['app_home']
app_home_present = node['logcleanup']['app_home_present']
domain_path = node['logcleanup']['domain_path']
keep_interval=node['logcleanup']['keep_interval']

require 'fileutils'

 
#Clear Domain Logs
Dir.glob("#{domain_path}/**/*").select{|logfile| File.mtime(logfile) < (Time.now - ("#{keep_interval}*24*60*60")) }.each{|logfile| File.delete(logfile) }


#Clear APP_HOME Logs
  if app_home_present
  Dir.glob("#{app_home}/**/*").select{|logfile| File.mtime(logfile) < (Time.now - ("#{keep_interval}*24*60*60")) }.each{|logfile| File.delete(logfile) } 
end 
#      

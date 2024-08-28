require 'bundler'

begin
  require 'vagrant'
rescue LoadError
  Bundler.require(:default, :development)
end

require 'vagrant-cba/plugin'
require 'vagrant-cba/command'
require 'vagrant-cba/config'

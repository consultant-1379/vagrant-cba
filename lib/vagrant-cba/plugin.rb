module Vagrant

    module CBA

        class Plugin < Vagrant.plugin('2')
          name "List"

          description <<-DESC
          This plugin 'ls' all of the vms running inside the machine
          DESC

          config "cba" do
              require_relative "config"
              Config
          end

          command 'hello' do
              require_relative 'command'
              Command
          end

          action_hook 'cba', :machine_action_up do |hook|
              require_relative 'action'
              hook.prepend Vagrant::CBA::Action
          end

        end
    end
end

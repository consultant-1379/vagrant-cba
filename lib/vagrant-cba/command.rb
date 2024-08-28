module Vagrant

    module CBA
        class Command < Vagrant.plugin('2', :command)
            def execute
                puts 'Hello, World!'
                0
            end

            def self.synopsis
                "prints hello world"
            end
        end
    end

end

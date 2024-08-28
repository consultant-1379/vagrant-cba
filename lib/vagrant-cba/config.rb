module Vagrant

    module CBA
        class Config < Vagrant.plugin('2', :config)
            attr_accessor :am_version_file
            attr_accessor :csm_model_file

            def initialize
                @am_version_file = UNSET_VALUE
                @csm_model_file = UNSET_VALUE
            end

            def finalize!
                @am_version_file = nil if @am_version_file == UNSET_VALUE
                @csm_model_file = nil if @csm_model_file == UNSET_VALUE
            end
        end
    end

end

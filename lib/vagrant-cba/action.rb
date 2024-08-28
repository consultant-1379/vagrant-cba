module Vagrant

    module CBA

        class Action
            def initialize(app, env)
                @app = app
            end

            def call(env)
                cba = env[:machine].config.cba
                am_version_file = cba.am_version_file
                csm_model_file = cba.csm_model_file
                unless am_version_file == nil or csm_model_file == nil
                    _path = File.expand_path('../../../scripts', __FILE__)
                    _script = File.join(_path, 'csm2box.sh')
                    system(_script, am_version_file, csm_model_file)
                end
                @app.call env
            end

        end
    end
end


# name: example-job
# about: an example of scheduling a job in a plugin
# version: 0.1
# authors: scossar

enabled_site_setting :example_job_enabled

after_initialize do

  class ::Jobs::ExampleJob < Jobs::Scheduled
    every 30.seconds

    def execute(args)
      puts "THIS IS A TEST"
    end
  end

end


# Plugin to add environment variables to the `site` object in Liquid templates

module Jekyll
    class EnvironmentVariablesGenerator < Generator
  
      def generate(site)
        print "ENV['GOOGLE_ANALYTICS_UA'] = ",(ENV['GOOGLE_ANALYTICS_UA'] || "nothing")
        site.config['google_analytics_ua'] = ENV['GOOGLE_ANALYTICS_UA'] || 'UA-64177721-2'

        print "ENV['gameplan_app_url'] = ",(ENV['gameplan_app_url'] || "nothing")
        site.config['gameplan_app_url'] = ENV['gameplan_app_url'] || 'app.gameplan.global';
        # Add other environment variables to `site.config` here...
      end
  
    end
  
  end
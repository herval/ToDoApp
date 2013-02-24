# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  app.pods do
    pod 'QuickDialog', "= 0.6"
  end

  app.icons = ["Icon.png", "Icon@2x.png"]
  app.version = "1.0"
  app.device_family = :iphone
  app.interface_orientations = [:portrait]
  app.name = 'To Do App'
end

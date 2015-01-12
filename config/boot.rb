require 'bundler'

Bundler.require

require_relative '../lib/translator'

root_path = Translator.root
lib_path = File.join(root_path, 'lib')
app_path = File.join(root_path, 'app')
[root_path, lib_path, app_path].each { |path| $LOAD_PATH.unshift(path) }

require 'config/dispatcher'

#\ -p 3000 -s thin

$: << "."

require 'unknown/router'
require 'unknown/application_controller'
require 'unknown/not_found_controller'
require 'unknown/action_dispatcher'
require 'unknown/app'
require 'donkey-rack'

use Rack::ShowExceptions
use Rack::Reloader

run Unknown::App
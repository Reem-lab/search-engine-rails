// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

window.Rails = require("@rails/ujs")
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "controllers"
Rails.start()
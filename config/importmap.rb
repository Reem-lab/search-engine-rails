# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.4-1/lib/assets/compiled/rails-ujs.js"
pin "chartkick", to: "https://ga.jspm.io/npm:chartkick@5.0.1/dist/chartkick.esm.js"
pin "Chart.bundle", to: 'Chart.bundle.js'
pin "ahoy", to: "https://ga.jspm.io/npm:ahoy@1.0.1/lib/index.js"
pin "os", to: "https://ga.jspm.io/npm:@jspm/core@2.0.0/nodelibs/browser/os.js"

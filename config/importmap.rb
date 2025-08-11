# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/landing_page", under: "landing_page"
pin_all_from "app/javascript/metis_template", under: "metis_template"
pin_all_from "app/javascript/controllers", under: "controllers"

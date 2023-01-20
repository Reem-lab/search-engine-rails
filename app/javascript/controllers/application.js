import { Application } from "@hotwired/stimulus"

import 'chartkick';
import 'Chart.bundle';
import 'ahoy';
const application = Application.start()



// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

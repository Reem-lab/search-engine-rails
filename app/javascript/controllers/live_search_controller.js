import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "results", "form" ]
  timeout
  pendingRequest

  connect() {
    console.log("Connected!")
  }

  loading() {
    this.pendingRequest = true
    setTimeout(() => {
      if(this.pendingRequest) {
        this.resultsTarget.innerHTML = "<div>Searching...</div>"
      }
    }, 500)
  }

  search() {
    console.log("I am here")
    console.log(this)
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      Rails.fire(this.formTarget, 'submit')
    }, 2000)
  }
    
  // saveSearch() {
  //   clearTimeout(this.timeout)
  //   this.timeout = setTimeout(() => {
  //     Rails.fire(this.formTarget, 'keydown')
  //   }, 400)
  // }

  handleResults() {
    const [data, status, xhr] = event.detail
    this.resultsTarget.innerHTML = xhr.response
  }
    
}

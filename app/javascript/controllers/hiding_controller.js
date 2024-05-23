import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hiding"
export default class extends Controller {
  static targets = [ "button", "buttonDiv", "statusDisplay" ]
  static values = {
    status: String,
  }

  connect() {
    console.log("bonjour");
    console.log(this.statusValue);
    this.statusDisplayTarget.innerText = `status: ${this.statusValue}`
  }

  toggleClass(event) {
    this.buttonDivTarget.classList.toggle("d-none")
    const buttonText = event.currentTarget
    this.statusValue = `${buttonText.innerText}ed`
    this.statusDisplayTarget.innerText = `status: ${this.statusValue}`
  }
}

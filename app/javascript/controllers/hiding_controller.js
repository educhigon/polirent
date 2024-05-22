import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hiding"
export default class extends Controller {
  static targets = [ "button", "buttonDiv", "statusDisplay" ]
  static values = {
    xxx: String,
    bob: String
  }

  connect() {
    console.log("bonjour");
    console.log(this.bobValue);
    console.log(this.xxxValue);

    // this.button.classList.toggle("d-none")
  }

  toggleClass(event) {
    // event.preventDefault();
    console.log("toggle triggered");
    this.buttonDivTarget.classList.toggle("d-none")
    console.log(this.xxxValue);
    this.element.innerHtml = this.xxxValue
    this.statusDisplayTarget.innerText = `status: ${this.xxxValue}`
  }
}

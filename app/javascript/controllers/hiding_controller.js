import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hiding"
export default class extends Controller {
  static targets = [ "button", "buttonDiv", "statusDisplay" ]
  static values = {
    status: String,
  }

  connect() {
    console.log("bonjour");
    // console.log(this.statusValue);
    if (this.statusValue != "pending") {
      this.statusDisplayTarget.innerText = `${this.statusValue}`
    }
  }

  toggleClass(event) {
    this.buttonDivTarget.classList.toggle("d-none")
    const button = event.currentTarget
    this.statusValue = `${button.innerText.toLowerCase()}ed`
    console.log(this.statusValue);
    if (this.statusValue != "pending") {
      // console.log("hello");
      this.statusDisplayTarget.innerText = `${this.statusValue}`
    }



    // if (this.statusValue != "pending") {
    //   console.log(this.statusValue);
    //   console.log("first if");
    // }
    // if (this.statusValue != "pending") {
    //   console.log(this.statusValue);
    //   console.log("second if");

    //   this.statusDisplayTarget.innerText = `status: ${this.statusValue}`
    // }
  }
}

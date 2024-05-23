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
      this.statusValue = `${this.statusValue.toUpperCase()}`
      this.statusDisplayTarget.innerHTML = `<p style="color:green">${this.statusValue}</p>`
      if (this.statusValue === 'REJECTED') {
        this.statusDisplayTarget.innerHTML = `<p style="color:red">${this.statusValue}</p>`
      }
      console.log(this.statusValue);
    }
  }

  toggleClass(event) {
    // this.buttonDivTarget.classList.toggle("d-none")
    const button = event.currentTarget
    this.statusValue = `${button.innerText.toUpperCase()}ED`
    this.buttonDivTarget.innerHTML = `<p style="color:green">${this.statusValue}</p>`
    if (this.statusValue === 'REJECTED') {
      this.buttonDivTarget.innerHTML = `<p style="color:red">${this.statusValue}</p>`
    }
    console.log(this.statusValue);


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

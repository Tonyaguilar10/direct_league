import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    console.log('Hello from navbar controller')
  }

  updateNavbar() {
    const offsetHeight = document.querySelector('.nav-bar').offsetHeight;
    if (window.scrollY >= offsetHeight) {
      this.element.classList.add("nav-bar-blur")
    } else {
      this.element.classList.remove("nav-bar-blur")
    }
  }
}

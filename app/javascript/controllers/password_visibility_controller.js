// app/javascript/controllers/password_visibility_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "icon"]

  toggle() {
    if (this.inputTarget.type === "password") {
      this.inputTarget.type = "text"
      this.iconTarget.textContent = "visibility_off"
    } else {
      this.inputTarget.type = "password"
      this.iconTarget.textContent = "visibility"
    }
  }
}

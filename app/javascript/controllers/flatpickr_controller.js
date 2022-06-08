import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    console.log('HELLO')
    flatpickr(".datepicker", {enableTime: true, dateFormat: "d-m-Y H:i"});
  }
}

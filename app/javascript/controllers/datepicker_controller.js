import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startTime", "endTime"]
  connect() {
    flatpickr(this.element, {
      altInput: true
    });
  }}

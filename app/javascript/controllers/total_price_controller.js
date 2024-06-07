import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["startDate", "endDate", "input"]

  calculate() {
    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)
    console.log(`Start Date: ${startDate}, End Date: ${endDate}`)
    const oneDay = 24 * 60 * 60 * 1000
    const price = parseFloat(this.data.get("priceValue"))

    if (!isNaN(startDate.getTime()) && !isNaN(endDate.getTime()) && endDate > startDate) {
      const days = Math.round((endDate - startDate) / oneDay)
      console.log(`Days: ${days}, Price: ${price}`)
      this.inputTarget.textContent = `$${(days * price).toFixed(2)}`
    } else {
      console.log('Invalid dates')
      this.inputTarget.textContent = "$0.00"
    }
  }

}

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'startDate', 'endDate', 'input']
  static values = {
    price: Number
  }
  connect() {
    this.calculate()
  }

  calculate() {
    this.begin = this.#retriveDateInputAsDate(this.startDateTargets)
    this.end = this.#retriveDateInputAsDate(this.endDateTargets)

    const days = this.#dateDifferenceInDays(this.begin, this.end)
    const totalPrice = this.priceValue * days
    this.inputTarget.innerText = totalPrice / 100
  }

  #retriveDateInputAsDate(targets) {
    const dateInputs = targets.map(target => parseInt(target.value, 10))
    return new Date(dateInputs[2], dateInputs[1] - 1, dateInputs[0])
  }

  #dateDifferenceInDays() {
    const difference = this.end.getTime() - this.begin.getTime();
    return (Math.floor(difference) / (1000 * 60 * 60 * 24))
  }
}

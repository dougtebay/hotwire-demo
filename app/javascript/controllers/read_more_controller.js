import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['content', 'button']
  static values = { expanded: { type: Boolean, default: false } }

  toggle() {
    this.expandedValue = !this.expandedValue
  }

  expandedValueChanged(value, previousValue) {
    if (previousValue == null) return

    this.toggleClass()
    this.toggleContent()
  }

  toggleClass() {
    this.contentTarget.classList.toggle('truncate')
  }

  toggleContent() {
    this.buttonTarget.textContent = this.content()
  }

  content() {
    return this.expandedValue ? 'Read less' : 'Read more'
  }
}

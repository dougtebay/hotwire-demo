import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['content', 'expandableContainer', 'expandable']
  static values = { expanded: { type: Boolean, default: false } }

  expandedValueChanged(value, previousValue) {
    if (previousValue === undefined) return

    this.toggleClasses()
    this.toggleContent()
  }

  toggle(event) {
    this.expandedValue = !this.expandedValue
  }

  toggleClasses() {
    this.expandableContainerTarget.classList.toggle('expandable--collapse')
    this.expandableContainerTarget.classList.toggle('expandable--expand')
    this.expandableTarget.classList.toggle('expandable--hide')
    this.expandableTarget.classList.toggle('expandable--show')
  }

  toggleContent() {
    this.contentTarget.textContent = this.content()
  }

  content() {
    return this.expandedValue ? 'Collapse' : 'Expand'
  }
}

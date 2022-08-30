import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [ "output" ]

  initialize() {
    this.show = false
    this.outputTarget.textContent = 'Show frame'
  }

  bar(event) {
    // console.log('hiya', event.srcElement)
    // event.srcElement.classList.add('foo')
    this.show = !this.show
    this.outputTarget.textContent = this.show ? 'Hide frame' : 'Show frame'
    const element = document.getElementById('foo');
    const bar = document.getElementById('bar');
    if (element.classList.contains('foo')) {
      element.classList.remove('foo')
      element.classList.add('bar')
      bar.classList.remove('foo-height')
      bar.classList.add('bar-height')
      console.log('up', element, bar)
    } else {
      element.classList.add('foo')
      element.classList.remove('bar')
      bar.classList.add('foo-height')
      bar.classList.remove('bar-height')
      console.log('down', element, bar)
    }
  }

  accordionLabel() {
    this.show ? 'Hide' : 'Show'
  }
}

import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['container']

  notificationTargetConnected() {
    this.fadeIn()
    this.fadeOut()
    this.dismiss()
  }

  fadeIn() {
    this.containerTarget.classList.remove('notification--hide', 'notification--dismiss')
    this.containerTarget.classList.add('notification--show')
  }

  fadeOut() {
    setTimeout(() => {
      this.containerTarget.classList.remove('notification--show')
      this.containerTarget.classList.add('notification--dismiss')
    }, 2000)
  }

  dismiss() {
    setTimeout(() => {
      this.containerTarget.classList.remove('notification--dismiss')
      this.containerTarget.classList.add('notification--hide')
    }, 1000)
  }
}

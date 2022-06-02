import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['slide']

  connect() {
    console.log("Hello from carroussel")
    this.curSlide = 0;
    // Select all slides

    // loop through slides and set each slides translateX property to index * 100%
    this.slideTargets.forEach((slide, indx) => {
      slide.style.transform = `translateX(${indx * 100}%)`;
    });

    this.maxSlide = this.slideTargets.length - 1
  }

  moveForward() {
    console.log("moving forward")
    if (this.curSlide === this.maxSlide) {
      this.curSlide = 0;
    } else {
      this.curSlide += 1;
    }

  //   move slide by -100%
    this.slideTargets.forEach((slide, indx) => {
      slide.style.transform = `translateX(${100 * (indx - this.curSlide)}%)`;
    });
  }

  moveBackwards() {
    if (this.curSlide === 0) {
      this.curSlide = this.maxSlide;
    } else {
      this.curSlide -= 1;
    }

    //   move slide by 100%
    this.slideTargets.forEach((slide, indx) => {
      slide.style.transform = `translateX(${100 * (indx - this.curSlide)}%)`;
    });
  }
}

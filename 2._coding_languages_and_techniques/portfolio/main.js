
import gsap from "gsap";

// GLOBAL VARIABLES
const accessibilityButton = document.getElementById('button_accessibility_colors');
var clickNumberControl = 0;



// ACCESSIBILITY COLORS
accessibilityButton.addEventListener('click', function() {
    
    // TO CHANGE
    const elementsDarkColor1 = document.querySelectorAll('.dark_color_1');
    const elementsDarkColor2 = document.querySelectorAll('.dark_color_2');
    const elementsLightColor1 = document.querySelectorAll('.light_color_1');
    const elementsLightColor2 = document.querySelectorAll('.light_color_2');


    // TO IMPROVE: change to switch
    if (clickNumberControl == 0) {
        // CHANGE TO BLACK AND WHITE
        for (let i = 0; i < elementsDarkColor1.length; i++) {
            elementsDarkColor1[i].style.backgroundColor = 'black';
            elementsDarkColor1[i].style.color = 'white';
        }
        for (let i = 0; i < elementsDarkColor2.length; i++) {
            elementsDarkColor2[i].style.color = 'black';
        }
        for (let i = 0; i < elementsLightColor1.length; i++) {
            elementsLightColor1[i].style.backgroundColor = 'rgb(231, 231, 231)';
        }
        for (let i = 0; i < elementsLightColor2.length; i++) {
            elementsLightColor2[i].style.backgroundColor = 'rgb(204, 203, 203)';
        }
        clickNumberControl = 1;

    }  else if (clickNumberControl == 1) {
        // CHANGE TO COLOR FRIENDLY
        for (let i = 0; i < elementsDarkColor1.length; i++) {
            elementsDarkColor1[i].style.backgroundColor = '#a6611a';
            elementsDarkColor1[i].style.color = '#f5f5f5';
        }
        for (let i = 0; i < elementsDarkColor2.length; i++) {
            elementsDarkColor2[i].style.color = 'black';
        }
        for (let i = 0; i < elementsLightColor1.length; i++) {
            elementsLightColor1[i].style.backgroundColor = '#ebddbe';
        }
        for (let i = 0; i < elementsLightColor2.length; i++) {
            elementsLightColor2[i].style.backgroundColor = '#b6dfd9';
        }
        clickNumberControl = 2;

    } else if (clickNumberControl == 2) {
        // CHANGE TO NORMAL COLORS
        for (let i = 0; i < elementsDarkColor1.length; i++) {
            elementsDarkColor1[i].style.backgroundColor = '#350842';
            elementsDarkColor1[i].style.color = 'white';
        }
        for (let i = 0; i < elementsDarkColor2.length; i++) {
            elementsDarkColor2[i].style.color = '#350842';
        }
        for (let i = 0; i < elementsLightColor1.length; i++) {
            elementsLightColor1[i].style.backgroundColor = '#FAFAD2';
        }
        for (let i = 0; i < elementsLightColor2.length; i++) {
            elementsLightColor2[i].style.backgroundColor = 'rgb(207, 178, 228)';
        }
        clickNumberControl = 0;
    }
});



// SUBTITLES ANIMATION
console.log("1111111111111")
const subtitles = gsap.utils.toArrays('h2')
const tl = gsap.timeline();
console.log("222222222222")

subtitles.forEach(element => {
    const splitSubtitle = new SplitTextJS(element);
    tl.from(splitSubtitle.chars, {
        opacity: 0,
        y: 80,
        rotateX: -90,
        stagger: .02
    }, "<")
    .to(splitSubtitle.chars, {
        opacity:0,
        y: -80,
        rotateX: 90,
        stagger: .02
    }, "<1")
});




function querySelectorAll(selector) {
    return Array.prototype.slice.call(document.querySelectorAll(selector), 0);
}

function activateNavbar() {
    // Get all "navbar-burger" elements
    let navbarBurgers = querySelectorAll('.navbar-burger')

    // Check if there are any navbar burgers
    if (navbarBurgers.length > 0) {

        // Add a click event on each of them
        navbarBurgers.forEach(function (el) {
            el.addEventListener('click', function () {

                // Get the target from the "data-target" attribute
                let target = el.dataset.target
                target = document.getElementById(target)

                // Toggle the class on both the "navbar-burger" and the "navbar-menu"
                el.classList.toggle('is-active')
                target.classList.toggle('is-active')

            });
        });
    }
}


document.addEventListener('DOMContentLoaded', function () {
    activateNavbar()
});
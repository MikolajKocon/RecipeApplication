const formLogin = document.querySelector('#loginForm');
const email = document.querySelector('#email');
const password = document.querySelector("#password");
const errorMessage = document.querySelector('#error-message');

formLogin.addEventListener('submit', onFormSubmission);

function onFormSubmission(event) {
    const errors = [];

    if (!email.value.includes('@')) {
        errors.push('Email must contain @');
    }
    if (password.value === ""){
        errors.push("Please provide a password");
    }

    if (errors.length === 0) {
        errorMessage.classList.add("d-none");
    } else {
        errorMessage.innerText = errors.join(", ");
        errorMessage.classList.remove("d-none");
        event.preventDefault();
    }
}

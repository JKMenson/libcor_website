
(function() {
  // Add your EmailJS service ID and template ID here
  emailjs.init('85pA4X-OlLgxagPQH');

  // Attach an event listener to the form submit button
  document.getElementById('contact-form').addEventListener('submit', function(event) {
    event.preventDefault();

    // Get the values from the form
    const firstName = document.getElementById('first-name').value;
    const lastName = document.getElementById('last-name').value;
    const email = document.getElementById('email').value;
    const country = document.getElementById('country').value;
    const message = document.getElementById('message').value;

    // Send the email using EmailJS
    emailjs.send('service_pt3cyce', 'template_9kh4hd6', {
      'from_name': firstName + ' ' + lastName,
      'email': email,
      'country': country,
      'message': message
    })
      .then(function(response) {
        console.log('Email sent', response.status, response.text);
        alert(' Thank you for contacting New Covenant Church!');
        document.getElementById('contact-form').reset();
      }, function(error) {
        console.log('Email failed to send', error);
        alert('Sorry, there was an error sending your message. Please try again later.');
      });
  });
})();

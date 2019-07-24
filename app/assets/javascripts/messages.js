function changeAdminEmail(current_email) {
  var email = prompt("Enter new admin email", current_email);
  if (email) {
    $.ajax('/sys/set_admin_email', {
      method: 'POST',
      data: {
        email: email,
        authenticity_token: $('[name="csrf-token"]')[0].content
      }
    })
  }
}
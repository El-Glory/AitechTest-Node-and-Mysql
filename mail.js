import nodemailer from 'nodemailer';

function sendMail(email, pin) {
  let transporter = nodemailer.createTransport({
    service : 'gmail',
    secure: false,
    port: 25,
    auth: {
      user: 'elgloryoriabure@gmail.com',
      pass: 'elgloriabs'
    },
    tls:{
      rejectUnauthorized: false
    }
  });

  let HelperOptions = {
    from: '"Oriabure El-Glory" <elgloryoriabure@gmail.com>',
    to: email,
    subject: 'Welcome Message',
    text: `Thank you for signing up. Your pin is ${pin}`

  }

  transporter.sendMail(HelperOptions, function(error, info){
    if (error) {
      console.log(error);
    } else {
      console.log('Email sent: ' + info.response);
    }
  });
}

export {sendMail}

final htmlContent = '''
    <!DOCTYPE html>
<html>
<head>
  <title>Ticket Confirmation</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #0E120E;
      margin: 0;
      padding: 0;
      color: #d6d6d6;
    }

    .container {
      max-width: auto;
      margin: 20px auto;
      border-radius: 5px;
      overflow: hidden;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .header h3 {
      margin: 0px;
    padding-top: 20px;
    padding-bottom: 20px;
    text-align: center;
    background-color: #0269D8;
    font-family: system-ui;
    font-style: italic;
    font-size: xxx-large;
    color: white;
    }
    .content {
      padding: 1%;
      margin-left: 1%;
      margin-right: 1%;
    }
    .content center p b{
      font-size: x-small;
    }
    .content .progress{
      height: 100px;
    }
    .progress .row {
      display: flex;
      align-items: center;
    }
    
    .progress .column {
      flex: 50%;
      padding: 10px;
      height: auto;
      background-color: #f9f9f9;
      display: flex;
      align-items: center;
    }
    .progress .box{
    width: 10px;
    height: 10px;
    border: 5px solid #02d1d8;
    margin: 10px;
    padding: 5px;
    }
    .content span{
      text-align: left;
      font-size: smaller;
    }
    .content .time p{
      text-align: left;
    }
    .content .time h4{
      text-align: left;
      font-size: small;
      color: #fff;
    }
    .content .button{
      max-width: 100%;
      padding: 10px;
      text-align: center;
      background-color: #0269D8;
    }
    .content .button a{
      
      text-decoration: none;
      text-transform: uppercase;
      text-align: center;
      font-family: sans-serif;
      font-size: medium;
      font-weight: bold;
      color: white;
    }
    .details {
      padding: 1%;
      margin-left: 1%;
      margin-right: 1%;
    }
    .details p{
      text-align: justify;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    }
    .details p a{
      color: #02d1d8;
    }
    .footer {
      background-color: #f9f9f9;
      padding: 20px;
      text-align: center;
    }

    .footer p {
      margin: 0;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <h3>Ticketmaster</h3>
    </div>
    
    <div class="content">
      <center><p><b>Text Your Ticket Transfer From - Is Ready To Be Accepted!</b></p></center>
      <div class="progress">
        <div class="row">
          <div class="column">
            <div class="box"></div>
            <p>Reviews</p>
          </div>
          <div class="column">
            <div class="box"></div>
            <p>Accepted</p>
          </div>
          <div class="column" >
            <div class="box"></div>
            <p>Complete</p>

          </div>
        </div>
      </div>
      <br>
      <span><b>Keith Urban: The Speed of Now World Tour</b></span><br><br>
      <div class="time">
        <p>Sat,Jun 18@ 7.00 PM</p>
        <h5>THINK Financial Amphitheatre, West Palm Beach, FL</h5>
        <h4>Section LAWN8, GENERAL ADMISSION</h4>
      </div>
      
      <div class="button">
        <a href="#">Accept Ticket</a>
      </div>
    </div>
    <div class="details">
      <p>By clicking "ACCEPT TICKETS, you agree to our 
        <a href="">Terms of Use</a> and any applicable ticket back terms. 
        <b>Ticket Tip: Only accept ticket transfers from people you know and trust.</b> 
        This helps everyone to stay both safe and socially distanced while also improving 
        ticket security. Please note that due to evolving COVID-19 protocols, 
        the venue may change seating configurations and we can't guarantee social 
        distancing at the event. 
        <br><br>

        If the tickets were obtained fraudulently by the person transferring them, 
        they may be canceled at any time, removed from your account and no longer 
        available for use. This email is NOT your ticket. You can see the ticket 
        in your Ticketmaster account via the button above.
        <br><br>
        
        <b>Transfer Status: Received</b>
        <br><br>
        
        You got 4 ticket(s)! You're one step closer to seeing Keith Urban: The Speed of Now World Tour.</p>
    </div>
    <!-- <div class="footer">
      <p>Thank you for choosing Ticketmaster!</p>
    </div> -->
  </div>
</body>
</html>

  ''';
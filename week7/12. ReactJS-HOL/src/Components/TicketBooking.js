import React, { useState } from 'react';

function TicketBooking() {
  const [loggedIn, setLoggedIn] = useState(false);

  const toggleLogin = () => {
    setLoggedIn(!loggedIn);
  };

  return (
    <div style={{ padding: '20px' }}>
      <h2>🎟️ Ticket Booking App</h2>
      {
        loggedIn ? (
          <div>
            <h3>Welcome, User!</h3>
            <p>You can now book your tickets.</p>
            <button onClick={toggleLogin}>Logout</button>
          </div>
        ) : (
          <div>
            <h3>Please Login to Continue</h3>
            <button onClick={toggleLogin}>Login</button>
          </div>
        )
      }
    </div>
  );
}

export default TicketBooking;

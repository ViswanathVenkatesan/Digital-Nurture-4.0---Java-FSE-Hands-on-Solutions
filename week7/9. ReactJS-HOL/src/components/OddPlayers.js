import React from 'react';

function OddPlayers([first, , third, , fifth]) {
  return (
    <ul>
      <li>First: {first}</li>
      <li>Third: {third}</li>
      <li>Fifth: {fifth}</li>
    </ul>
  );
}

export default OddPlayers;

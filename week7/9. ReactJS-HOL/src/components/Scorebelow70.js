import React from 'react';

function Scorebelow70({ players }) {
  const filtered = players.filter(p => p.score < 70);

  return (
    <ul>
      {filtered.map((item, index) => (
        <li key={index}>
          Mr. {item.name} <span>{item.score}</span>
        </li>
      ))}
    </ul>
  );
}

export default Scorebelow70;

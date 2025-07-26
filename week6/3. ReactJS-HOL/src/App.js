import React from 'react';
import './App.css';
import CalculateScore from './Components/CalculateScore';

function App() {
  return (
    <div className="App">
      <h1>Welcome to the Student Management Portal</h1>
      <CalculateScore name="Viswa" school="ABC High School" total={480} goal={5} />
    </div>
  );
}

export default App;

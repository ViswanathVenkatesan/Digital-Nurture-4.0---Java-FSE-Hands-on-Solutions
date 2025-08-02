import React, { useState } from 'react';

function App() {
  const [counter, setCounter] = useState(0);
  const [amount, setAmount] = useState('');
  const [currency, setCurrency] = useState('');

  const increment = () => {
    setCounter(prev => prev + 1);
  };

  const sayHello = () => {
    alert("Hello! Number is " + (counter + 1));
  };

  const decrement = () => {
    setCounter(prev => prev - 1);
  };

  const sayWelcome = (msg) => {
    alert(msg);
  };

  const handleClick = () => {
    alert("I was clicked");
  };

  const handleSubmit = () => {
    if (currency.toLowerCase() === 'euro') {
      const result = amount * 0.012;
      alert(`Converting to Euro Amount is ${result}`);
    }
  };

  return (
    <div className="App">
      <h1>{counter}</h1>
      <button onClick={() => { increment(); sayHello(); }}>Increment</button>
      <button onClick={decrement}>Decrement</button>
      <button onClick={() => sayWelcome("welcome")}>Say Welcome</button>
      <button onClick={handleClick}>Click on me</button>

      <h2 style={{ color: "green" }}>Currency Convertor!!!</h2>
      <form onSubmit={(e) => { e.preventDefault(); handleSubmit(); }}>
        <label>Amount:</label>
        <input type="number" value={amount} onChange={(e) => setAmount(e.target.value)} /><br />
        <label>Currency:</label>
        <input type="text" value={currency} onChange={(e) => setCurrency(e.target.value)} /><br />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
}

export default App;

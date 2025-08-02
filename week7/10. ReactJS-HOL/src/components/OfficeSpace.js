import React from 'react';
import './OfficeSpace.css';

const OfficeSpace = () => {
  const officeList = [
    {
      Name: 'DBS',
      Rent: 50000,
      Address: 'Chennai',
      Image: 'https://images.unsplash.com/photo-1573164574572-cb89e39749b4?auto=format&fit=crop&w=800&q=60'
    },
    {
      Name: 'WeWork',
      Rent: 65000,
      Address: 'Bangalore',
      Image: 'https://images.unsplash.com/photo-1581090700227-1e8a7976a175?auto=format&fit=crop&w=800&q=60'
    }
  ];

  return (
    <div>
      <h1>Office Space , at Affordable Range</h1>
      {officeList.map((item, index) => (
        <div key={index}>
          <img src={item.Image} width="25%" height="25%" alt="Office Space" />
          <h2>Name: {item.Name}</h2>
          <h3 className={item.Rent <= 60000 ? 'textRed' : 'textGreen'}>
            Rent: Rs. {item.Rent}
          </h3>
          <h3>Address: {item.Address}</h3>
          <hr />
        </div>
      ))}
    </div>
  );
};

export default OfficeSpace;

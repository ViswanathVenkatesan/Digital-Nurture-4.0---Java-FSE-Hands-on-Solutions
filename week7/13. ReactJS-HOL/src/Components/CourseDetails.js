import React from 'react';

function CourseDetails({ courses }) {
  return (
    <div className="section">
      <h2>Course Details</h2>
      <ul>
        {courses.map((course, index) => (
          <li key={index}>
            <h3>{course.name}</h3>
            <p>{course.date}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default CourseDetails;

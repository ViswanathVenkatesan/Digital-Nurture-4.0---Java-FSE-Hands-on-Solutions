import React, { useState } from 'react';
import BookDetails from './Components/BookDetails';
import BlogDetails from './Components/BlogDetails';
import CourseDetails from './Components/CourseDetails';
import { books, blogs, courses } from './data';
import './App.css';

function App() {
  const [showBooks, setShowBooks] = useState(true);
  const [showBlogs, setShowBlogs] = useState(true);
  const [showCourses, setShowCourses] = useState(true);

  return (
    <div className="App">
      <h1>Blogger App</h1>

      <button onClick={() => setShowBooks(!showBooks)}>Toggle Book Details</button>
      <button onClick={() => setShowBlogs(!showBlogs)}>Toggle Blog Details</button>
      <button onClick={() => setShowCourses(!showCourses)}>Toggle Course Details</button>

      <div className="container">
        {showBooks && <BookDetails books={books} />}
        {showBlogs && <BlogDetails blogs={blogs} />}
        {showCourses ? <CourseDetails courses={courses} /> : <p>No Course Details</p>}
      </div>
    </div>
  );
}

export default App;

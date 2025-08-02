import React from 'react';

function BlogDetails({ blogs }) {
  return (
    <div className="section">
      <h2>Blog Details</h2>
      <ul>
        {blogs.map((blog, index) => (
          <li key={index}>
            <h3>{blog.title}</h3>
            <p>{blog.author}</p>
            <p>{blog.content}</p>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default BlogDetails;

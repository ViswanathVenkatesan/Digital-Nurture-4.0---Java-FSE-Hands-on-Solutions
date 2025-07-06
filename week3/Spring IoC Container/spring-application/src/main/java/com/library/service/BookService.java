package com.library.service;

import com.library.repository.BookRepository;

public class BookService {
    private BookRepository bookRepository;

    // Setter for Spring to inject via XML
    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public void processBooks() {
        System.out.println("BookService: Starting book processing...");
        bookRepository.retrieveBookData();
    }
}

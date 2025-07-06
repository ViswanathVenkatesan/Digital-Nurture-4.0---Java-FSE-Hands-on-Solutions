package com.library.service;

import com.library.repository.BookRepository;

public class BookService {
    private BookRepository bookRepository;

    // Setter for Dependency Injection
    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public void performLibraryTask() {
        System.out.println("BookService: Performing library operation...");
        bookRepository.accessData();
    }
}


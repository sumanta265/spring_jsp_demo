package com.io.springjspdemo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaInterface extends JpaRepository<Student,Long> {

}

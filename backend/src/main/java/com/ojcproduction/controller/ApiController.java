package com.ojcproduction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ojcproduction.model.Photo;
import com.ojcproduction.model.PhotoDao;

/**
 * ApiController
 */
@RestController
@RequestMapping("/wedding")
@CrossOrigin
public class ApiController {

   
    @Autowired
    private PhotoDao photoDao;


    
    @GetMapping("/gallery")
    public List<Photo> getAllPhotos() {
    	List<Photo> photos = photoDao.getAllPhotos();
    	return photos;
    }
}
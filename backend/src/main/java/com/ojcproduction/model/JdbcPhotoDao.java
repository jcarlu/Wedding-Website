package com.ojcproduction.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component 
public class JdbcPhotoDao implements PhotoDao {
	
private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JdbcPhotoDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}; 

	@Override
	public List<Photo> getAllPhotos() {
		List <Photo> photos = new ArrayList <> ();
		String sqlGetAllPhotos = "SELECT * from photos";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllPhotos);
			while(results.next()) {
				photos.add(mapResultToPhoto(results));
			}
			return photos;	
	}
	
	private Photo mapResultToPhoto(SqlRowSet results) {
		  Photo photo = new Photo();
		  photo.setTitle(results.getString("title"));
		  photo.setLocation(results.getString("location"));
		  photo.setDescription(results.getString("description"));
	        return photo;
	    }

}

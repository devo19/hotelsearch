package co.grandcircus.hotelsearch;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<Hotel, Long>{
	
	 List<Hotel> findByCity(String city);
	 
	 List<Hotel> findByPricePerNight(Integer pricePerNight);
	 
	 

}

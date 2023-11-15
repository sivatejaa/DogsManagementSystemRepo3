package com.tejaClasses.DMS.DMSrepository;
/**
*
* @author Sivateja Raju Thangala S558636
*/
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tejaClasses.DMS.Models.Dog;

@Repository
public interface DogRepository extends CrudRepository<Dog,Integer>{

}

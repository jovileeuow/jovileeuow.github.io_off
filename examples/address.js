db.month.insert( {"_id":"addressBook", 
	          "address":[{"city":"Sydney",
                              "street":"25 Victoria St."},
                             {"city":"Wollongong",
                              "street":"125 Northfields Ave."}] } );

db.createCollection("department",
   	            {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"_id":{"bsonType":"string"},
	       "address":{"bsonType":"array",
                          "description":"Cities and streets",
                          "items":{"bsonType":"object",
                                   "properties":{"city":{"bsonType":"string"},
                                                 "street":{"bsonType":"string"} },
                                   "required":["city","street"],
				   "additionalProperties":false
				  }
			 }
	      },
 "required":["_id","address"],
 "additionalProperties":false 
} } } );

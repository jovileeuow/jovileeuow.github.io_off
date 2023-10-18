db.createCollection( "nested",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"_id":{"bsonType":"string"},
	       "name":{"bsonType":"string",
		       "maxLength":100},
	       "address":{"bsonType":"object",
		          "properties":{"city":{"bsonType":"string",
						"minLength":5,"maxLength":30},
					"code":{"bsonType":"int",
						"maximum":9999,
						"exclusiveMaximum":false} },
                          "required":["city","code"],
                          "additionalProperties":false			  
			 }
	      }, 
 "required":["name","address","_id"],
 "additionalProperties":false
} } } );


db.nested.insert({"_id":"HP667",
		"name":"Harry Potter",
                "address":{"city":"Dapto",
			   "code":NumberInt("2530") }
	       });


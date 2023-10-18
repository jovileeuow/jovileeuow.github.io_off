db.createCollection( "nested",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"_id":{"bsonType":"string"},
	       "name":{"bsonType":"string",
		       "maxLength":100},
	       "cars":{"bsonType":"array",
		       "items":{"bsonType":"string"},
		       "uniqueItems":true }
	      }, 
 "required":["name","cars","_id"],
 "additionalProperties":false
} } } );


db.nested.insert({"_id":"HP667",
		  "name":"Harry Potter",
                  "cars":["Ferrari","Mercedes","Hyundai"]
	       });


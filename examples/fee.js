db.department.insert({"_id":"Finance","budget":123});
db.department.insert({"_id":"Sales","budget":123,"fee":456});


db.createCollection("department",
                    { "validator":{$jsonSchema:
  {"bsonType":"object",
   "properties":{"_id":{"bsonType":"string"},
		 "budget":{"bsonType":"double",
			   "description":"Budget of department"},
                 "fee":{"bsonType":"double",
			"description":"Fee paid"}
	        },
   "required":["_id","budget"],
   "additionalProperties":false
  } } } );


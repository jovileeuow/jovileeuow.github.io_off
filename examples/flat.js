db.createCollection( "flat",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"name":{"bsonType":"string",
		       "maxLength":100},
	       "age":{"bsonType":"int",
		      "maximum":200,
		      "exclusiveMaximum":true} },
 "required":["name","age","_id"],
 "additionalProperties":false
} } } );


db.flat.insert({"_id":"HP666","name":"Harry Potter","age":NumberInt("100")});
db.flat.insert({"name":"Harry Potter","age":NumberInt("201")});
db.flat.insert({"name":"Harry Potter","age":NumberInt("100"),"magic":"yes"});

db.createCollection( "flat",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"name":{"bsonType":"string",
		       "maxLength":100},
	       "age":{"bsonType":"int",
		      "maximum":200,
		      "exclusiveMaximum":true} },
 "required":["name","age",]
} } } );

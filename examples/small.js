db.createCollection( "small",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"_id":{"bsonType":"string"},
	       "name":{"bsonType":"string"} },
 "required":["_id","name"],
 "additionalProperties":false
} } } );


db.small.insert({"_id":"HP666","name":"Harry Potter"});

db.empty.insert({"_id":123});




db.createCollection( "tiny",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"name":{"bsonType":"string"} },
 "required":["name"],
 "additionalProperties":false
} } } );

db.tiny.insert({"name":"Harry Potter"});

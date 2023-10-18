db.month.insert( {"_id":"Winter", 
                  "months":["June","July","August"]} );


db.createCollection( "month",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"_id":{"bsonType":"string"},
	       "months":{"bsonType":"array",
                         "description":"Winter",
                         "items":{"bsonType":"string"} } },
 "required":["_id","months"],
 "additionalProperties":false
} } } );


db.createCollection( "month",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "required": ["months"],
 "properties":{"months":{"bsonType":"array",
                         "description":"Winter",
                         "items":{"bsonType":"string"} }
              },
 "additionalProperties":true
} } } );

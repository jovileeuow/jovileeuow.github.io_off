db.createCollection( "empty",
                    {"validator":{$jsonSchema:
{"bsonType":"object",
 "properties":{"_id":{"bsonType":"string"} },
 "required":["_id"],
 "additionalProperties":true
} } } );


db.empty.insert({"_id":"HP666"});
db.empty.insert({"_id":"HP667","name":"Harry Potter"});
db.empty.insert({"_id":"HP668","name":"Harry Potter","occupation":"wizard"});


db.empty.insert({"_id":123});

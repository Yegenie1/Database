db.memo.find({})

db.memo.find({name : 'Tom', office : 'seoul'},{phone : 1})

db.memo.find({$or : [{age : 10},{office : 'Wordware'}]}, {}).count()

db.memo.find({$or : [{age : 10}, {office : 'Wordware'}]},{_id : 0,name:1})
//{$or : [{조건1},{조건2}]}==>{$or:[json,json,json...]}
 
db.memo.find({office : 'busan'},{_id : 0, age : 0})

db.memo.find({office :{$not : /busan/}},{office : 1, phone : 1}).limit(3)

db.memo.deleteOne({office : 'Wordware'})

db.memo.find({office : 'Wordware'})

db.memo.updateMany({office : 'seoul'},{$set : {phone : '999'}})
//update({조건},{$set : {바꿀것}})

db.memo.find({office:'seoul'},{phone:1})

db.memo.deleteMany({})
//다지울때
db.memo.find({}).count()


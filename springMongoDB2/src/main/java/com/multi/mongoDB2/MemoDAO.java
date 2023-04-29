package com.multi.mongoDB2;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

@Repository
public class MemoDAO {
	@Autowired
	MongoTemplate mongo;

	public List<MemoVO2> list() {
		Query query = new Query();
		query.with(new Sort(Sort.Direction.DESC, "date"));
		List<MemoVO2> list = mongo.find(query, MemoVO2.class, "memo");
		return list;

	}
	
	public MemoVO2 one(String _id) {
        return mongo.findById(_id, MemoVO2.class, "memo");
    }
	
	public void insert(MemoVO2 vo) {
		vo.setDate(new Date());//날짜는 자동으로 넣어주자
		mongo.insert(vo,"memo");
	}
	
	public void delete(String _id) {
		Query query = new Query(new Criteria("_id").is(_id));
        mongo.remove(query, "memo");
	}
	
	public void update(MemoVO2 vo) {
        //조건 _id가 내가 입력한 vo.get_id()와 일치해야 함.
        Query query = new Query(new Criteria("_id").is(vo.get_id()));
        System.out.println("DAO>> " + vo);
        
        //set할 내용을 지정할 Update객체를 만들어주어야 함.
        Update update = new Update();
        //update객체를 이용해서 바꿀 내용(set)을 지정 
        update.set("content", vo.getContent());
        System.out.println(update);
        mongo.updateMulti(query, update, MemoVO2.class, "memo");
    }
	
}

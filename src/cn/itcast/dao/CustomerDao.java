package cn.itcast.dao;

import cn.itcast.domain.Customer;
import cn.itcast.domain.QueryResult;

import java.util.List;

public interface CustomerDao {
    void add(Customer customer);

    void update(Customer customer);

    void delete(String id);

    Customer find(String id);

    List<Customer> getAll();

    QueryResult pageQuery(int startIndex, int pageSize);
}

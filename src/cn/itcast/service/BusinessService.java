package cn.itcast.service;

import cn.itcast.domain.Customer;
import cn.itcast.domain.PageBean;
import cn.itcast.domain.QueryInfo;

import java.util.List;

public interface BusinessService {
    void addCustomer(Customer customer);

    void update(Customer customer);

    void delete(String id);

    Customer findCustomer(String id);

    List<Customer> getAllCustomer();

    PageBean pageQuery(QueryInfo queryInfo);
}

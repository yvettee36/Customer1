package cn.itcast.service.impl;

import cn.itcast.dao.CustomerDao;
import cn.itcast.dao.impl.CustomerDaoImpl;
import cn.itcast.domain.Customer;
import cn.itcast.domain.PageBean;
import cn.itcast.domain.QueryInfo;
import cn.itcast.domain.QueryResult;
import cn.itcast.factory.DaoFactory;
import cn.itcast.service.BusinessService;

import java.util.List;

public class BusinessServiceImpl implements BusinessService {
    private CustomerDao dao = DaoFactory.getInstance().createDao(CustomerDao.class);

    @Override
    public void addCustomer(Customer customer) {
        dao.add(customer);
    }

    @Override
    public void update(Customer customer) {
        dao.update(customer);
    }

    @Override
    public void delete(String id) {
        dao.delete(id);
    }

    @Override
    public Customer findCustomer(String id) {
        return dao.find(id);
    }

    @Override
    public List<Customer> getAllCustomer() {
        return dao.getAll();
    }

    @Override
    public PageBean pageQuery(QueryInfo queryInfo) {
        //1.调dao获取到页面数据
        QueryResult qr = dao.pageQuery(queryInfo.getStartIndex(), queryInfo.getPageSize());

        //2.根据dao查询结果，生成页面显示需要PageBean
        PageBean bean = new PageBean();
        bean.setCurrentPage(queryInfo.getCurrentPage());
        bean.setList(qr.getList());
        bean.setPageSize(queryInfo.getPageSize());
        bean.setTotalRecord(qr.getTotalRecord());
        return bean;
    }
}

package cn.itcast.domain;

import java.util.List;

public class QueryResult {
    private List list;//记住用户看的页的数据
    private int totalRecord;//记住总记录数

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }
}

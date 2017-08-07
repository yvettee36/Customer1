package cn.itcast.domain;

public class QueryInfo {
    private int currentPage = 1;//用户当前页
    private int pageSize = 5;//默认一页5条数据
    private int startIndex;//记住用户当前看的页的数据在数据库的起始位置

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    //由于startIndex是由currentPage与pageSize计算而得所以没必要有set方法
    public int getStartIndex() {
        this.startIndex = (this.getCurrentPage() - 1) * this.getPageSize();
        return startIndex;
    }

}

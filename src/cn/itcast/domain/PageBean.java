package cn.itcast.domain;

import java.util.List;

public class PageBean {
    private List list;
    private int totalRecord;
    private int pageSize;
    private int totalPage;//这个由内部的totalRecord和pageSize所得，所以没必要有set方法
    private int currentPage;
    private int previousPage;//上一页(同totalPage)
    private int nextPage;//下一页(同totalPage)
    private int[] pageBar;//页码条,它根据总页数来生成页码条

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

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPage() {
        //100 5 20
        //101 5 21
        if (this.totalPage % this.pageSize == 0) {
            this.totalPage = this.totalRecord / this.pageSize;
        } else {
            this.totalPage = this.totalRecord / this.pageSize + 1;
        }
        return totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPreviousPage() {
        if (this.currentPage - 1 < 1) {
            this.previousPage = 1;
        } else {
            this.previousPage = this.currentPage - 1;
        }
        return previousPage;
    }

    public int getNextPage() {
        if (this.currentPage + 1 >= this.totalPage) {
            this.nextPage = this.totalPage;
        } else {
            this.nextPage = this.currentPage + 1;
        }
        return nextPage;
    }

    public int[] getPageBar() {
        int pageBar[] = new int[this.totalPage];
        for (int i = 1; i <= this.totalPage; i++) {
            pageBar[i - 1] = i;
        }
        this.pageBar = pageBar;//一调用页面，就得到需要显示的页码条
        return pageBar;
    }
}

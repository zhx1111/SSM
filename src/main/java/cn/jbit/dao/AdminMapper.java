package cn.jbit.dao;

import cn.jbit.pojo.Admin;
import cn.jbit.pojo.Book;

import java.util.List;

public interface AdminMapper {
    //登录
    Admin login(String uname);

    List<Admin> getAll();

    int addAdmin(Admin admin);

    int DelAdmin(int id);
}

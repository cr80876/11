package com.cdvtc.guashen.dao;

import com.cdvtc.guashen.model.User;
import com.cdvtc.guashen.model.Waigua;

import java.util.List;

public interface GuashenDao {

    /**
     *@param
     *@param
     *@return 用户对象，null表示未找到
     * 根据用户账号和密码，获取用户信息
     */
    User getUser(String userzh, String usermm);

    /**
     *
     * 添加用户（用户注册）
     */
    void addUser(User user);

    List<Waigua> getAllWaigua();

}

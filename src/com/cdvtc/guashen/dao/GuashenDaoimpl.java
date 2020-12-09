package com.cdvtc.guashen.dao;
import com.cdvtc.guashen.db.DBConnection;
import com.cdvtc.guashen.model.User;
import com.cdvtc.guashen.model.Waigua;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 * @author hp
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GuashenDaoimpl implements GuashenDao{
    DBConnection db = new DBConnection();

    @Override
    public User getUser(String userzh, String usermm) {

        try {
            Connection con = db.getConnection();
            //执行查询
            PreparedStatement pst = con.prepareStatement("select  * from  user where  userzh = ? and usermm = ?");
            pst.setString(1,userzh);
            pst.setString(2,usermm);

            ResultSet rs = pst.executeQuery();

            //处理结果集
            if(rs.next()){
                //获取行数据封装成管理员对象
                User user = new User();
                user.setUserzh(userzh);
                System.out.println(user.getUserzh());
                user.setUsermm(usermm);
                user.setUserid(rs.getInt("userid"));
                user.setUsermc(rs.getString("usermc"));
                user.setUserdh(rs.getString("userdh"));
                user.setUserqq(rs.getString("userqq"));
                // 关闭连接，释放资源
                rs.close();
                pst.close();
                con.close();
                return user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;//未找到对象
    }

    @Override
    public void addUser(User user) {
        try {
            // 获取连接
            Connection con = db.getConnection();

            // 执行SQL语句
            PreparedStatement pst = con.prepareStatement("insert into user(usermc,userzh,usermm,userdh,userqq) values(?,?,?,?,?)");
            pst.setString(1, user.getUsermc());
            pst.setString(2, user.getUserzh());
            pst.setString(3, user.getUsermm());
            pst.setString(4, user.getUserdh());
            pst.setString(5, user.getUserqq());

            pst.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    @Override
    public List<Waigua> getAllWaigua() {
        try {
            //获取数据库连接
            Connection con = db.getConnection();

            //执行查询 //创建一个接口，Statement向数据库发送一个不带参数的查询语句
            Statement st = con.createStatement();
            ResultSet rs  = st.executeQuery("select * from waigua");

            //处理结果集//ArrayList动态数组让List能灵活的设置数组的大小等好处
            List<Waigua> waiguas = new ArrayList<Waigua>();
            while(rs.next()){
                //将行数据加入通讯录封装类
                Waigua waigua = new Waigua();
                waigua.setWgid(rs.getInt("wgid"));
                waigua.setWgjg(rs.getInt("wgjg"));
                waigua.setGlyid(rs.getInt("glyid"));
                waigua.setYxid(rs.getInt("yxid"));
                waigua.setWgmc(rs.getString("wgmc"));
                waigua.setWgbz(rs.getString("wgbz"));
                waiguas.add(waigua);
//                contact.(id);
//                contact.setName(name);
//                contact.setSex(rs.getString("sex"));
//                contact.setQq(rs.getString("qq"));
//                contact.setMobile(rs.getString("mobile"));
//                contact.setStuid(rs.getString("stuid"));
//                contact.setEmail(rs.getString("email"));
//                contact.setOld(rs.getInt("old"));
//                contact.setAddress(rs.getString("address"));
//                int classId = rs.getInt("classId");
//                contact.setClassInfo(this.getclassinfo(classId));
//                contacts.add(contact); //将对象加入列表
            }
            return waiguas;  //返回全部通讯录

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
}

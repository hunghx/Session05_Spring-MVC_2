package ra.demospringmvc.dao.impl;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import ra.demospringmvc.dao.IPostDao;
import ra.demospringmvc.model.Post;
import ra.demospringmvc.util.ConnectDB;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
//@Component
public class PostDaoImpl implements IPostDao {
    @Override
    public List<Post> findAllPostByTitleOrContent(String search) {
        List<Post> list = new ArrayList<>();
        // mở kết nối
        Connection conn = ConnectDB.openConnection();
        try {
            CallableStatement callSt = conn.prepareCall("select * from post where title like ? or content like ?");
            callSt.setString(1,"%"+search+"%");
            callSt.setString(2,"%"+search+"%");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()){
                Post p = new Post();
                p.setId(rs.getInt("id"));
                p.setTitle(rs.getString("title"));
                p.setAuthor(rs.getString("author"));
                p.setContent(rs.getString("content"));
                p.setImageUrl(rs.getString("imageUrl"));
                p.setCreatedDate(rs.getDate("createdAt"));
                list.add(p);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            ConnectDB.closeConnection(conn);
        }
        return list;
    }

    @Override
    public List<Post> findAllPost() {
        List<Post> list = new ArrayList<>();
        // mở kết nối
        Connection conn = ConnectDB.openConnection();
        try {
            CallableStatement callSt = conn.prepareCall("select * from post");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()){
                Post p = new Post();
                p.setId(rs.getInt("id"));
                p.setTitle(rs.getString("title"));
                p.setAuthor(rs.getString("author"));
                p.setContent(rs.getString("content"));
                p.setImageUrl(rs.getString("imageUrl"));
                p.setCreatedDate(rs.getDate("createdAt"));
                list.add(p);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            ConnectDB.closeConnection(conn);
        }
        return list;
    }
}

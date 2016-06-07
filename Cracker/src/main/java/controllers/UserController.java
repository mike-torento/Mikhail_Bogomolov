package controllers;
import model.User;
import java.sql.SQLException;
import java.util.List;




public class UserController {
    static List<User> u=null;
    public UserController() {
    }


    public static User authorization(String login,String pass) throws SQLException{
        User user = dao.UserDAO.getUserByLogin(login);
                if (user.getPass().equals(pass)){
                    return user;
        }
        return null;
    }
    
    public static boolean registration(User user) throws SQLException{
        u = dao.UserDAO.getUserList();
        for (int i=0;i<u.size();i++){
            if(u.get(i).getLogin().equals(user.getLogin())){
                return false;
            }
        }
        return true;
    }
}

package controllers;
import model.User;
import java.sql.SQLException;
import java.util.List;




public class UserController {
    
    
    public UserController() {
    }


    public static boolean authorization(String login, String pass) throws SQLException {
        List<User> u = dao.UserDAO.getUserList();
        boolean flag = false;
        for (int i = 0; i < u.size(); i++) {
            if (u.get(i).getLogin().equals(login)) {
                flag = true;
                break;
            }
        }
        if (flag) {
            User user = dao.UserDAO.getUserByLogin(login);
            if (user.getPass().equals(pass)) {
                return true;
            }
        }
        return false;
    }
    
    public static boolean adminPermission(String login,String pass){
        if ((login.equals("admin"))&& (pass.equals("admin"))) return true;
        return false;
    }
    
    
}

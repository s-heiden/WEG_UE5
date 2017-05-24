package model.dao;

import java.util.List;
import model.pojo.Hotel;
import model.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class Hotels {

    public static List<Hotel> getHotels() {
        List<Hotel> list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            String hqlString = "from Hotel";
            Query query = session.createQuery(hqlString);
            list = query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return list;
    }

//    public static Object getHotels(String city, String name, String country) {
//        List<Hotel> list = null;
//        Session session = HibernateUtil.getSessionFactory().openSession();
//        try {
//            list = session.createCriteria(Hotel.class)
//                    .add(Restrictions.or(
//                            Restrictions.like("city", city + "%"),
//                            Restrictions.like("name", name + "%"),
//                            Restrictions.like("country", country + "%")
//                    )).list();
//        } catch (HibernateException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
    public static Object getHotels(String name) {
        List<Hotel> list = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            list = session.createCriteria(Hotel.class)
                    .add(Restrictions.or(
                            Restrictions.like("name", name, MatchMode.ANYWHERE),
                            Restrictions.like("city", name, MatchMode.ANYWHERE),
                            Restrictions.like("country", name, MatchMode.ANYWHERE))
                    )
                    .list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return list;
    }

}

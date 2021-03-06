package com.runsystem.booking.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.dhtmlx.planner.DHXEv;
import com.dhtmlx.planner.DHXEventsManager;
import com.dhtmlx.planner.DHXStatus;

public class CustomRecEventsManager extends DHXEventsManager {

	public CustomRecEventsManager(HttpServletRequest request ) {
		super(request);
	}

	public Iterable<DHXEv> getEvents() { 
		DHXEventsManager.date_format = "yyyy-MM-dd HH:mm:ss"; 
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<DHXEv> evs = new ArrayList<DHXEv>();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			evs = session.createCriteria(EventRec.class).list();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally{
			session.flush();
			session.close();
		}  
    	return evs;
	}

	
	@Override
	public DHXStatus saveEvent(DHXEv event, DHXStatus status) { 
		DHXEventsManager.date_format = "yyyy-MM-dd HH:mm:ss"; 
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();

			if (status == DHXStatus.UPDATE)
				session.update(event);
			else if (status == DHXStatus.DELETE) {
				session.delete(event); 
				List<EventRec> evs = session.createCriteria(EventRec.class).
						add(Restrictions.
						eq("event_pid", event.getId())).
						list();
				for (int i = 0; i < evs.size(); i++)
					session.delete(evs.get(i));
			} else if (status == DHXStatus.INSERT) 
				session.save(event); 
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally{
			session.flush();
			session.close();
		}
		return status;
	}
 
	
	@Override
	public DHXEv createEvent(String id, DHXStatus status) {
		return new EventRec();
	} 
}

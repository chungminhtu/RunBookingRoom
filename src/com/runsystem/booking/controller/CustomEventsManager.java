package com.runsystem.booking.controller;

import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;

import com.dhtmlx.planner.DHXEv;
import com.dhtmlx.planner.DHXEventsManager;
import com.dhtmlx.planner.DHXStatus;
import com.dhtmlx.planner.data.DHXCollection;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CustomEventsManager extends DHXEventsManager {

	public CustomEventsManager(HttpServletRequest request) {
		super(request);
	}

	public Iterable<DHXEv> getEvents() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<DHXEv> evs = new ArrayList<DHXEv>();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			evs = session.createCriteria(Event.class).list();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}

		return evs;
	
	}

	@Override
	public DHXStatus saveEvent(DHXEv event, DHXStatus status) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();

			if (status == DHXStatus.UPDATE)
				session.update(event);
			else if (status == DHXStatus.DELETE)
				session.delete(event);
			else if (status == DHXStatus.INSERT)
				session.save(event);

			session.getTransaction().commit();
		} catch (RuntimeException e) {
			e.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		
		return status;
	}

	@Override
	public DHXEv createEvent(String id, DHXStatus status) {
		return new Event();
	}

	@Override
	public HashMap<String, Iterable<DHXCollection>> getCollections() {
		ArrayList<DHXCollection> tables_tree = new ArrayList<DHXCollection>();
		
		Room c1 = new Room("Phòng 1", "Phòng hop 1");
		Room c2 = new Room("Phòng 2", "Phòng hop 2");
		Room c3 = new Room("Vnlab", "Phòng hop Vnlab");

		c1.addChild(new Room("Room1", "Room1"));
		c1.addChild(new Room("Room2", "Room 2"));
		c1.addChild(new Room("Room3", "Room 3"));
		c1.addChild(new Room("Room4", "Room 4"));
		c2.addChild(new Room("Room5", "Room 5"));
		c2.addChild(new Room("Room6", "Room 6"));
		c2.addChild(new Room("Room7", "Room 7"));
		c2.addChild(new Room("Room8", "Room 8"));
		c3.addChild(new Room("Room9", "Room 9"));
		c3.addChild(new Room("Room10", "Room 10"));
		c3.addChild(new Room("Room11", "Room 11"));
		c3.addChild(new Room("Room12", "Room 12"));

		tables_tree.add(c1);
		tables_tree.add(c2);
		tables_tree.add(c3);
		HashMap<String, Iterable<DHXCollection>> c = new HashMap<String, Iterable<DHXCollection>>();
		c.put("tables_tree", tables_tree);

		ArrayList<DHXCollection> table_lightbox = new ArrayList<DHXCollection>();
		table_lightbox.add(new Room("Room1", "Room 1"));
		table_lightbox.add(new Room("Room2", "Room 2"));
		table_lightbox.add(new Room("Room3", "Room 3"));
		table_lightbox.add(new Room("Room4", "Room 4"));
		table_lightbox.add(new Room("Room5", "Room 5"));
		table_lightbox.add(new Room("Room6", "Room 6"));
		table_lightbox.add(new Room("Room7", "Room 7"));
		table_lightbox.add(new Room("Room8", "Room 8"));
		table_lightbox.add(new Room("Room9", "Room 9"));
		table_lightbox.add(new Room("Room10", "Room 10"));
		table_lightbox.add(new Room("Room11", "Room 11"));
		table_lightbox.add(new Room("Room12", "Room 12"));
		c.put("Room", table_lightbox);
		return c;
	}
}


package com.runsystem.booking.controller;

import com.dhtmlx.planner.DHXEventRec;

public class EventRec extends DHXEventRec {
	public String notes;
	public String requests;
	public String password;
	public String rooms;
	public String groupnames;
	public String types;
	public String readonly;
	public String rec_pattern;

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getRequests() {
		return requests;
	}
	
	public void setRequests(String requests) {
		this.requests = requests;
	}
	
	public String getNotes() {
		return notes;
	}
	
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	public String getGroupnames() {
		return groupnames;
	}

	public void setGroupnames(String groupnames) {
		this.groupnames = groupnames;
	}
	
	public String getTypes() {
		return types;
	}
	
	public void setTypes(String types) {
		this.types = types;
	}

	public String getReadonly() {
		return readonly;
	}

	public void setReadonly(String readonly) {  
			this.readonly = null; 
	}

	public String getRooms() {
		return rooms;
	}

	public void setRooms(String rooms) {
		this.rooms = rooms;
	}

	public String getRec_pattern() {
		return rec_pattern;
	}

	public void setRec_pattern(String rec_pattern) {
		this.rec_pattern = rec_pattern;
	}
}

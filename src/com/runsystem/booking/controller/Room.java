package com.runsystem.booking.controller;
import java.util.ArrayList;
import com.dhtmlx.planner.data.DHXCollection;
 
public class Room extends DHXCollection {
   
			public String key;
           	public String name;
           	public Boolean open = true;
           	
           	public ArrayList<DHXCollection> children = null;
 
 
           	public Room(String _key, String _name) {
                          	super(_key, _name);
                          	this.key = _key;
                          	this.name = _name; 
           	}
 
           	public String getName() {
                          	return name;
           	}
 
           	public void setName(String name) {
                          	this.name = name;
                          	render();
           	}
  
 
           	protected void render() {
                          	setLabel(this.name + " (" +  " people, " +    ")");
           	}
 
           	public Iterable<DHXCollection> getChildren() {
                          	return children;
           	}
           	public void setChildren(ArrayList<DHXCollection> children) {
                          	this.children = children;
           	}
           	public void addChild(DHXCollection child) {
                          	if (children == null)
                                        	children = new ArrayList<DHXCollection>();
                          	children.add(child);
           	}
 
           	public String getKey() {
                          	return key;
           	}
            
           	
           	public Boolean getOpen() {
                          	return open;
           	}
           	public void setOpen(Boolean open) {
                          	this.open = open;
           	}
}
